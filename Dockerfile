FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
COPY . .

RUN pip install -r requirements.txt

CMD ["python3","-m","NekoMusic"]
