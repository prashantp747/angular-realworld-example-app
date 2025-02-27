# Stage 1
FROM node:12.22.1 as build-step


RUN mkdir -p /node/app
WORKDIR /node/app
COPY package.json /node/app
COPY package-lock.json /node/app
RUN npm install
RUN npm install -g protractor
RUN npm install -g @angular/cli
RUN npm install pm2 -g
COPY . /node/app
RUN npm -v
#RUN npm run-script lint
#RUN pm2 start npm --name "app name" -- start
#RUN npm run-script build

EXPOSE 4200 4444
#RUN protractor protractor.conf.js
#RUN pm2 start "ng serve --host 0.0.0.0 --port 8082" --name "My Angular App"
#CMD [ "pm2-runtime", "npm", "--", "start" ]
# This tells which user will execute commands
#USER root

#RUN apt-get update && \
# apt-get install -y openssh-server

#RUN useradd node_user && \
#    echo "node_user:1234" | chpasswd && \
 #  mkdir /home/node_user/.ssh -p && \
  #  chmod 700 /home/node_user/.ssh && \
   # mkdir -p -m0755 /var/ru/app/distn/sshd

#RUN mkdir -p /home/node_user/app/node_modules && chown -R node_user:node_user /home/node_user/app

#COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

#RUN chown remote_user:remote_user   -R /home/remote_user && \
#    chmod 400 /home/remote_user/.ssh/authorized_keys
