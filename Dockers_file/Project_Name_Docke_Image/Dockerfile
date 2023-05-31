FROM Project_Name_Docke_Image_backup

RUN bash

ENV DEBIAN_FRONTEND=noninteractive

# set the docker working dir to /Project_Name
WORKDIR /Project_Name

### Copy the requirements.txt file to the docker image ###

COPY ./requirements/requirements.txt .
COPY ./requirements/requirements.py .

### Install the requirements.txt file ###

RUN pip3 install -r requirements.txt
RUN python3 requirements.py

### If you want to use conda to install packages, uncomment the following lines ###

# RUN conda run -n Project_Name pip install -r requirements.txt

### If you want to activate the conda environment and run the app, uncomment the following lines ###

# ENTRYPOINT [ "conda activate Project_Name" ]
# CMD ["python","app.py"]