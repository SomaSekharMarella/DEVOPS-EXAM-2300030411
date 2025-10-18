############################################################
#               React Development Dockerfile
#  Use this section for running React in development mode
############################################################
FROM node:20-alpine
WORKDIR /react-app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]
