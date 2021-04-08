#Step 1: Specify base image
FROM node:alpine

#Step 2:
WORKDIR /usr/app

##Step 3: Install dependencies
COPY ./package.json ./

#Step 3.3: Install more dependencies
RUN  npm install
COPY ./ /usr/app


#Step 5:
CMD ["npm","run","start"]
