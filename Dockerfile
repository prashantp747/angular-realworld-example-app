# Stage 1
FROM node:12.22.1 as build-step
RUN mkdir -p /app
WORKDIR /app
#COPY package.json /app
COPY . /app

RUN npm install
RUN npm install -g protractor
RUN npm -v
#RUN npm run-script lint
RUN npm run-script build
EXPOSE 4200 4444
#ENTRYPOINT npm run build

# Stage 2
#FROM nginx:1.17.1-alpine
#COPY --from=build-step /app/docs /usr/share/nginx/html