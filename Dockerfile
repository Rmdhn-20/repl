FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  unzip \
  python \
  wget \
  curl && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json . .

COPY . .

EXPOSE 5000

CMD ["bash", "./ReplRoot/main.sh"]
