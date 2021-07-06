FROM python:3.7-buster
WORKDIR /usr/src/app
COPY . .
RUN chmod +x /usr/src/app/start.sh

EXPOSE 8888 6080

ENTRYPOINT /usr/src/app/start.sh
