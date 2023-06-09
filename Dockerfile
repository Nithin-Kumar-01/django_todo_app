FROM python:alpine3.18

maintainer : Nithin

RUN pip install django==3.2

COPY . /app

WORKDIR /app

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

