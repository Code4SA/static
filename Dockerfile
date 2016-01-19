FROM debian

RUN apt-get update && \
    apt-get install -y nginx-light git && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /app
ADD . /app

EXPOSE 5000

CMD ["bash", "/app/start"]
