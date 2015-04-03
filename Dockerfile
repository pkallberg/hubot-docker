FROM node:0.10

RUN adduser --disabled-password --gecos "" yeoman && \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN npm install -g yo generator-hubot

ENV HOME /home/yeoman
USER yeoman
WORKDIR /home/yeoman
COPY . /home/yeoman

CMD ["bin/hubot"]
