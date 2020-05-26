FROM alpine
RUN apk add curl
COPY . .
RUN chmod 777 entrypoint.sh
ENTRYPOINT ./entrypoint.sh