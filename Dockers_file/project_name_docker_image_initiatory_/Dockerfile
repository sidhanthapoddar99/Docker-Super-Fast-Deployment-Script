### Use this file to create a docker image for the project and add nessary dependency which are static ###


FROM ubuntu_image

# RUN bash


# set the docker working dir to /project_name
WORKDIR /project_name

ENV DEBIAN_FRONTEND=noninteractive


RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip


### Uncomment the following lines if you want to install postgresql ###
# RUN apt-get install postgresql postgresql-contrib

### wkhtmltopdf installation ###

# RUN apt install -y wkhtmltopdf

### Latex installation ###

# RUN apt-get install latexmk -y --fix-missing
# RUN apt-get install texlive-latex-extra -y
# RUN apt-get install texlive-fonts-recommended -y

### Libreoffice installation ###

# RUN apt-get update
# RUN apt-get install libreoffice -y --fix-missing



###################################################

#################################################
#################################################
#### __________Minconda setup___________  ####

# install anaconda for python development
# FROM utilities AS conda-install

# install miniconda to /miniconda
# RUN curl -LO https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# conda install script and cleanup
# RUN bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda -b && rm Miniconda3-latest-Linux-x86_64.sh

# set conda executable
# ENV PATH=/miniconda/bin:${PATH}

# update to the latest version of conda if there has been a patch release
# RUN conda update -y conda

# update conda to the latest version if it is not already
# RUN conda update -n base -c defaults conda

# install anaconda for python development
# FROM conda-install AS environment-setup

#################################################




# initialize the prefered conda shell. This modifies bashrc to ensure shell context is correct
# RUN conda init bash

# create the project_name conda environment
# all semblace python related commands, tests, and long running processes
# should be executed in this conda environment

# do not auto activate the base environment
# RUN conda config --set auto_activate_base false

# RUN conda create  -y --name project_name python=3.8 pip

# # add interactive conda activation command to the bashrc
# # ensures that you are in the 'project_name' conda environment when you get a shell in the container
#.bashrc file is like the .ps1 file in windows which runs before the bash is actiavted
# RUN echo "conda activate project_name" >> /root/.bashrc