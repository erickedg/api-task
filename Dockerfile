FROM python:3.11.4-slim

WORKDIR /usr/src/app

#install packages, delete
RUN apt-get update \
    && apt-get clean \
    && apt-get -y install openssh-client libpq-dev curl vim

#RUN curl -fsSL -o /user/locla/bin/dbmate
#RUN chmod +x /usr/local/bin/dbmate


#FROM builer


COPY . .


ENTRYPOINT ["python", "-u", "holamundo.py"]