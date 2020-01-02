FROM alpine/git
RUN apk add --update openssh-client
COPY entrypoint.sh my_key /
RUN chmod +x /entrypoint.sh
RUN mkdir ~/.ssh && ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
ENTRYPOINT ["/entrypoint.sh"]