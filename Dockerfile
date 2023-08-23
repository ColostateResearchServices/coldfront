FROM python:3.11-alpine

RUN apk update

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
COPY . .

#RUN python3 ./manage.py initial_setup
#RUN python3 ./manage.py load_test_data

ENV DEBUG=True

EXPOSE 8000
CMD ["sh", "dockerStart.sh"]
