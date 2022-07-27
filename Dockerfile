FROM node:16-bullseye-slim
# Specify the version of node we are using for the application

EXPOSE 3000
# Expose application to port 3000

RUN mkdir /home/simple-profile-app && chown -R node:node /home/simple-profile-app
# change permissions to non-root user and
# use the RUN command to create a new directory in the application image where our application would reside

WORKDIR /home/simple-profile-app
# set default dir so that next commands executes in /home/simple-profile-app dir

USER node
# set docker to run as non-root user

COPY --chown=node:node ./app /home/simple-profile-app
# copy our local application directory and files to the new directory we created in the image


RUN npm install --only=development && npm cache clean --force
# will run npm install in /home/profile-app to install all the dependencies of the application

CMD ["node", "server.js"]
# start the application by runnning `node server.js` in the WORKDIR
 


# FROM node:13-alpine
# # Specify the version of node we are using for the application

# RUN mkdir -p /home/simple-profile-app
# # use the RUN command to create a new directory in the application image where our application would reside

# COPY ./app /home/simple-profile-app
# # copy our local application directory and files to the new directory we created in the image

# WORKDIR /home/simple-profile-app
# # set default dir so that next commands executes in /home/simple-profile-app dir

# RUN npm install
# # will run npm install in /home/profile-app to install all the dependencies of the application

# CMD ["node", "server.js"]
# # start the application by runnning `node server.js` in the WORKDIR
 
