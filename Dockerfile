FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y


WORKDIR /root/NekoMusic
COPY . .

RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt

CMD bash startup.sh
