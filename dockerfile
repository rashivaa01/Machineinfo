FROM python:3 

LABEL Mainainer="Rashi"
LABEL Vesrion="0.0.1"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 9000

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
