# System
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive  

# Installing Dependancies
RUN apt update
RUN apt-get clean 

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y git wget python3-dev python3-pip unzip

RUN python3 -m pip install pip --upgrade
RUN pip3 install scikit-build
RUN apt-get update
RUN apt install -y cmake curl

# Install dependancies of your application here
# RUN pip3 install <dependancy1>
RUN pip install tensorflow
# RUN apt install <dependancy2>
ENV PYTHONIOENCODING=utf8 
RUN echo "$FOO $BAR $PYTHONIOENCODING"

# Copy neccessary file like inference program etc to docker image
COPY ./ /opt/
