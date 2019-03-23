FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

ADD requirements.txt /app/
RUN pip install -r requirements.txt
ADD . /app/

RUN ["rm", "docker-compose.yml", "Dockerfile"]

CMD ["python", "/app/mafia_backend/manage.py", "runserver", "0.0.0.0:8000"]