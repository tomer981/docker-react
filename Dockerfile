FROM node:alpine
USER node
RUN mkdir -p /home/node/appWORKDIR /home/node/app 
COPY --chown=node:node ./package.json ./ 
RUN npm install 
COPY --chown=node:node ./ ./
CMD ["npm", "start"]