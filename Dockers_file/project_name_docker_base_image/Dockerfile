FROM project_name_docker_base_image

RUN bash

ENV DEBIAN_FRONTEND=noninteractive

# set the docker working dir to /project_name
WORKDIR /project_name

### Copy the requirements.txt file to the docker image ###

COPY ./requirements/requirements.txt .
COPY ./requirements/requirements.py .

### Install the requirements.txt file ###

RUN pip3 install -r requirements.txt
RUN python3 requirements.py
