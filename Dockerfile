FROM ubuntu:18.04

RUN apt-get update && apt-get install -y ca-certificates \
    curl libssl1.0-dev node-less xz-utils git \
    python3 python3-pip libxml2-dev libxslt-dev libevent-dev \
    libsasl2-dev libldap2-dev postgresql-client
RUN git clone https://github.com/odoo/odoo.git -b 11.0 && \
    git --git-dir=/odoo/.git --work-tree=/odoo reset --hard a6d1353
RUN python3 -m pip install -Ur /odoo/requirements.txt
