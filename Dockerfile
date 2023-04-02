FROM node:19.7.0-alpine

# set work dir
WORKDIR /usr/src/bot

# copy package.json
COPY package*.json ./

# install deps
RUN npm install --only=production

# copy dist folder to /usr/app/dist
ADD dist ./dist

# set env to prod
ENV NODE_ENV production

CMD ["node", "dist/index.js"]