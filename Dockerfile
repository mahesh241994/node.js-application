FROM node:14-alpine

WORKDIR /mahesh

COPY package*.json .

RUN npm install
# node_modules copy from host to inside container 
COPY . .

RUN npm run build

CMD ["npm","start"]
