FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client jpeg-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps \ 
    gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

#EXPOSE 8000

#CMD ["gunicorn", "--bind", ":8000", "--workers", "3", "app .wsgi:application"]

RUN mkdir /app
COPY ./app /app
WORKDIR /app

