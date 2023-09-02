FROM node:16 
RUN mkdir -p /app/src
WORKDIR /app/src
COPY package.json .
RUN npm cache clean --force
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]


