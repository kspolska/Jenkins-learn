FROM python

ARG UID=1000
ARG GID=1000

RUN groupadd -g "${GID}" ansible && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" ansible

USER ansible

RUN pip install pip --upgrade && pip install ansible

USER root
RUN ln -s /home/ansible/.local/bin/ansible* /usr/local/bin

CMD ["/bin/bash"]
