FROM node:12.2.0-alpine

# set working directory
WORKDIR /mafia-client/

#ADD src src
#ADD public public
#COPY package.json .
COPY . .

CMD ["yarn" , "install"]

# start app
ENTRYPOINT ["yarn", "start"]