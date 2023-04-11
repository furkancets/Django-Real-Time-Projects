FROM python:3.10-slim-buster

WORKDIR /realtime-app

COPY  . /realtime-app

RUN pip3 install -r requirements.txt

CMD ["python3", "realtime_pr/manage.py", "runserver", "0.0.0.0:8000"]
