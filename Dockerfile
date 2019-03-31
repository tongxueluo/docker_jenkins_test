FROM jenkins:latest
USER root
RUN mkdir /my_app
WORKDIR /my_app
COPY /requirements.txt /my_app/
RUN pwd
RUN ls -la
RUN \
   apt-get update \ 
   && apt-get install -y \
   build-essential \
   python-pip \
   python-dev
RUN pip install --upgrade pip 
RUN pip install -r /my_app/requirements.txt
