FROM nikolaik/python-nodejs:python3.9-nodejs16

ENV PIP_NO_CACHE_DIR 1
# Installing Required Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

RUN git clone -b master https://github.com/Awesome-Prince/NekoXMusic /root/NekoMusic
WORKDIR /root/NekoMusic
#Copy config file to /root/Sophia/Sophia
COPY . ./NekoMusic/config.py* /root/NekoMusic/NekoMusic/

# Pypi package Repo upgrade
RUN pip3 install --upgrade pip setuptools
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/bot/bin:$PATH"

CMD bash startup.sh
