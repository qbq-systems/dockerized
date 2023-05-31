FROM node:19.9.0-alpine as app
WORKDIR /app
COPY app/*.json ./
RUN npm install
COPY app/*.ts .
COPY app/index.html .
COPY app/.eslintrc.cjs .
COPY app/public/ ./public/
COPY app/src/ ./src/
RUN npm run build

FROM nginx:1.25.0-alpine
COPY --from=app /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
