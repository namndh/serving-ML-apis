FROM python:3.6.9-slim-stretch

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY flask-app /opt/app

WORKDIR /opt/app
CMD ["python", "app.py"]

EXPOSE 9090