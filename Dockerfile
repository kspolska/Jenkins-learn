FROM python:3

WORKDIR /usr/src/app

RUN pip install ansible

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]