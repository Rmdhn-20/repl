FROM ubuntu:latest

RUN apt-get update && \
  apt-get install -y \
  unzip \
  python \
  wget \
  nodejs \
  curl && \
  apt-get upgrade -y 

COPY package.json . .

RUN npm install

COPY . .

EXPOSE 5000

CMD ["bash", "./ReplRoot/main.sh"]
