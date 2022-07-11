# Simple Profile
This is a simple HTML, NodeJs and MongoDB app that gets containerized  whenever a push is made to the main branch

This demo app shows a simple pet profile app set up using 
- index.html with pure js and css styles
- nodejs backend with express module
- mongodb for data storage

```
All components are docker-based
```

#### To start the application

Step 1: Run the below command:
```
docker-compose up
```
> make sure you are in the root directory containing the docker-compose file

Step 2: Access the  mongo-express UI on port `localhost:8081`, create a new database  `my-db` and create a new collection `pets` in the database `my-db`

Step 3: You can now access the app on `localhost:3000`
