# Signup Application with Docker, Nginx, Node.js & MySQL
## Signup Application Overview:
This project is a full-stack Signup Application built using:
1.  Frontend: HTML (Signup Form)
2.  Backend: Node.js (Express)
3.  Database: MySQL
4.  Reverse Proxy: Nginx
5.  Containerization: Docker & Docker Compose

## Purpose
The application allows users to register with their details, which are then stored in a MySQL database.

## Architecture
Browser → Nginx → Backend (Node.js) → MySQL
Nginx serves frontend and routes API requests
Backend handles business logic & DB operations
MySQL stores user data
Docker Compose manages all services

## Docker compose
![alt text](images/image.png)
## Entered the details to the registration page
![alt text](images/image1.png)
## Check that the information is redirecting to the database
![alt text](images/image-1.png)

## Exposed data:
![alt text](images/1.png)


## Docker compose down
![alt text](images/2.png)