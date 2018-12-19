FROM ubuntu:18.04

RUN apt-get update && apt-get install -y ca-certificates \
    curl libssl1.0-dev node-less xz-utils git \
    python3 python3-pip libxml2-dev libxslt-dev libevent-dev \
    libsasl2-dev libldap2-dev postgresql-client
RUN git clone --depth=1 --single-branch https://github.com/odoo/odoo.git -b 11.0
RUN pip3 install -Ur odoo/requirements.txt
