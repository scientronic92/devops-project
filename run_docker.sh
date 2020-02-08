
## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag

docker build -t flaskapp:3.0 .

# Step 2: 
# List docker images

docker ps

# Step 3: 
# Run flask app

docker run -d -p 8081:80 -t flaskapp:3.0
