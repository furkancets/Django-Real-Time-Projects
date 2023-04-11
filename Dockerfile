FROM python:3.10-slim-buster

WORKDIR /realtime-app

COPY  . /realtime-app

RUN pip3 install -r requirements.txt

RUN python realtime_pr/manage.py makemigrations && python realtime_pr/manage.py migrate

CMD ["python3", "realtime_pr/manage.py", "runserver", "0.0.0.0:8000"]
