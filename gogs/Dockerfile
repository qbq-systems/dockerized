FROM alpine:3.18.0
RUN apk add --no-cache libc6-compat gcompat linux-pam-dev git openssh bash
COPY gogs.sh .
RUN chmod +x gogs.sh
EXPOSE 22
EXPOSE 80
ENTRYPOINT ["/gogs.sh"]
