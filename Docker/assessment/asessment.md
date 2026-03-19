# Docker Labs:

## Docker Basics & setup:
Since i have already installed docker in my system. We can use "sudo apt install docker.io" to install docker.
### Verified docker installtion:
![alt text](images/image.png)
![alt text](images/image-1.png)
### Configure Docker to run as a non-root user
![alt text](images/image-4.png)
![alt text](images/image-2.png)
### From the repo, run the Flask app as a container. Pull required base images/image(s), run container, stop, restart, remove it.
![alt text](images/image-3.png)
Created a dokcerfile with the required structure
![alt text](images/image-5.png)
Built an images/image
![alt text](images/image-6.png)
Built container but it exits every time
![alt text](images/image-7.png)
Checking logs for errors:
![alt text](images/image-8.png)

## 2. Custom Docker Image (Multi-Stage & Best Practices) 
● Create a multi-stage Dockerfile for library-management-system that: 
![alt text](changes/image-9.png)
○ Uses a builder stage to install dependencies and build artifacts. 
○ Uses a smaller base images/changes/image in the final stage to run the app. 
![alt text](changes/image-10.png)
used builder and a python slim changes/image
○ Runs as a non-root user. 
○ Includes a .dockerignore to exclude unnecessary files. 
![alt text](changes/image-11.png)
○ Uses pinned versions for base images. 
![alt text](changes/image-12.png)
○ Applies caching and layer optimization. 
![alt text](changes/image-13.png)
● Build and tag the custom images/changes/image. 
![alt text](changes/image-14.png)
● Run the images/changes/image mapping the correct port. 
![alt text](changes/image-15.png)
![alt text](changes/image-16.png)
● Push the images/changes/image to a Docker registry. 
![alt text](changes/image-21.png)
● Demonstrate versioning of your images/changes/image (e.g., tag v1, v2).
![made changes](changes/image-17.png)
![alt text](changes/image-18.png)
![alt text](changes/image-19.png)
![alt text](changes/image-20.png)


## 3. Docker Networking 
● Run the Flask app container together with a MySQL container from the repo: ensure 
connectivity between them via Docker networking. 
![alt text](changes/image-1.png)
![alt text](changes/image-2.png)
● Create a custom bridge network and connect both containers so the Flask app can reach 
the MySQL container by name. 
![alt text](changes/image-3.png)
![alt text](changes/image-4.png)
● Demonstrate host network mode with one container (if applicable). 
![alt text](changes/image-6.png)
![alt text](changes/image-5.png)
● Demonstrate none network mode for isolation. 
![alt text](changes/image-7.png)
![alt text](changes/image-8.png)
● Test connectivity between containers (e.g. using ping, curl ).
brige connection works as well as host we can access the site
![alt text](changes/image.png)
but for none we cannot access the site.


## 4. Security & Resource Control 
![alt text](images/image-18.png)
corrected the port to 5000
![alt text](images/image-19.png)
● Run a container from your custom images/image with CPU and memory limits.
![alt text](images/image-21.png)
![alt text](images/image-22.png)
● Perform a security scan on the custom images/image. 
![alt text](images/image-23.png)
● Configure one container with a read-only filesystem. 
![alt text](images/image-24.png)
● Access and view logs of the Flask app container. 
![alt text](images/image-25.png)


## Docker-compose 
Create a docker-compose.yml that: 
1. Services Setup 
● Runs 3 services: 
○ app (Flask app using custom Docker images/image) 
○ mysql (official MySQL images/image) 
○ nginx (reverse proxy)
![alt text](images/image-9.png)

2. Application Flow 
● Nginx should expose: 
http://localhost:8081 
● All incoming traffic should go: 
Nginx → Flask App → MySQL 
![alt text](images/image-10.png)

3. Networking 
● Use a custom bridge network 
![alt text](images/image-11.png)

4. Data Persistence 
● Use a named volume: 
mysql_data
![alt text](images/image-12.png)
● Ensure database data persists after container restart

5. Environment Variables 
● Use .env file for: 
○ MySQL username/password 
○ Database name
![alt text](images/image-13.png)

6. Production Practices 
● Add: 
○ restart: always 
○ depends_on 
![alt text](images/image-14.png)
● Do NOT expose MySQL publicly 
![alt text](images/image-15.png)

7. Verification 
Run and verify: 
docker compose up -d 
![alt text](images/image-16.png)
Check: 
● App is accessible on localhost:8081
![alt text](images/image-17.png)
● Flask app successfully connects to MySQL 

# Documentation:
1. Difference: Image vs Container vs Volume vs Network

### Docker Image
A read-only blueprint used to create containers.
Contains application code, libraries, dependencies, and runtime.
Built using a Dockerfile.

### Docker Container
A running instance of an images/image.
Lightweight and isolated execution environment.
Can be started, stopped, deleted.

### Docker Volume
Used for persistent storage.
Data remains even if container is removed.
Ideal for databases (MySQL, PostgreSQL).

### Docker Network
Enables communication between containers.
Supports isolation and service discovery (via container names).
Types: bridge, host, none.

## 2. Cleaning Up Unused Docker Resources
to clean up unused resources we use prine command.
1.  Remove stopped containers:
docker container prune
2.  Remove unused images:
docker images/image prune
3.  Remove unused volumes:
docker volume prune
4.  Remove unused networks:
docker network prune

## Best practices for writing secure Dockerfiles. 
1.  Must use official base images and also make sure to use thier lighter versions like alpine or slim.
2.  we should avoid runnin as root
3.  we should mount each conatiner with volume so even if any container gets deleted the data stays safe.
