# Stage 1
FROM node:12.22.1 as build-step
RUN mkdir -p /app
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install
RUN npm install -g protractor
COPY . /app
RUN npm -v
#RUN npm run-script lint
RUN npm run-script build
EXPOSE 4200 4444
#CMD npm run build
CMD ["npm","start"]
# Stage 2
#FROM nginx:1.19
#COPY --from=build-step /app/dist /usr/share/nginx/html
#EXPOSE 8080:80