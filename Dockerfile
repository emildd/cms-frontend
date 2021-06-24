FROM node:14-alpine 
LABEL Name=cms-frontend Version=1.0

WORKDIR /app 

# ENV
# ENV NODE_ENV=production
ENV API_URL=http://localhost2020
ADD . .
RUN npm i sirv -g
RUN npm install && npm run build
EXPOSE 5000
ENV HOST=0.0.0.0
CMD ["npm", "start"]