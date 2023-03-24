FROM python

WORKDIR /usr/src/app

COPY . .

RUN pip install pip --upgrade

RUN pip install ansible



CMD [ "ansible", "--version"]