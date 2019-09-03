FROM python:3-alpine
COPY . /app
WORKDIR /app
RUN virtualenv /env && /env/bin/pip install -r /app/requirements.txt
ENTRYPOINT ["python3"]
CMD ["/env/bin/python3", "app.py"]