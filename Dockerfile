FROM python:3.6
LABEL maintainer "Atsushi Harada <atsushi9.harada@lixil.com>"

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get install -y nodejs

RUN npm update && \
    npm install -g serverless && \
    npm install --save serverless-python-requirements

RUN pip install awscli
