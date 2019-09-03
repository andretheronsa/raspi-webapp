FROM alpine:latest
RUN apk --no-cache add \
    python3 \
    python3-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*
COPY . /app
WORKDIR /app
RUN virtualenv /env && /env/bin/pip install -r /app/requirements.txt
ENTRYPOINT ["python3"]
CMD ["/env/bin/python3", "app.py"]