FROM node:13-alpine
# Specify the version of node we are using for the application

RUN mkdir -p /home/profile-app
# use the RUN command to create a new directory in the application image where our application would reside

COPY ./app /home/profile-app
# copy our local application directory and files to the new directory we created in the image

WORKDIR /home/profile-app
# set default dir so that next commands executes in /home/profile-app dir

RUN npm install
# will run npm install in /home/profile-app to install all the dependencies of the application

CMD ["node", "server.js"]
# start the application by runnning `node server.js` in the WORKDIR
 
