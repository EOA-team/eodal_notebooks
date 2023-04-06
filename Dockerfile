# get OS and install development tools
FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install git
RUN apt -y install python3-pip
RUN apt-get install 'ffmpeg'\
    'libsm6'\ 
    'libxext6'  -y
RUN apt-get -y install unzip
# define working directory
WORKDIR /eodal

# install eodal
# Step 1: COPY source code
COPY . .
# Step 2: install eodal from PyPI
# rasterio must be by-passed because of problems in the C-headers with Python 3.10
RUN pip3 install --upgrade pip
RUN pip3 install rasterio==1.3a3
RUN pip3 install folium
RUN pip3 install eodal
RUN pip3 install jupyterlab

# prepare the environment
ENV USE_STAC=True

# start the jupyter server
EXPOSE 8888
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
