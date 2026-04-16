# Task 1. Simple EC2 Instance
a. Create an EC2 instance (OS: Ubuntu) in default VPC
![alt text](image.png)

b. Enable Public-IP
![alt text](image-1.png)

c. Create SSH-KeyPair
![alt text](image-2.png)

d. Let it create a default security-group for you
![alt text](image-3.png)

e. Keep root volume size 20GB.
![alt text](image-4.png)

## Verified Everything on the console:
![alt text](image-5.png)
![alt text](image-6.png)
![alt text](image-7.png)
![alt text](image-8.png)

---

# 2. EC2, S3 & Instance Profile
a. Create an EC2 instance in default VPC with Public IP enabled.
![alt text](image-9.png)

b. SSH into EC2 instance using keypairs
![alt text](image-10.png)

c. Use awscli to upload some data (pdf, image, txt files) to S3 bucket (you can create s3
using GUI).
To use aws cli we have to firstly install awscli:
![alt text](image-11.png)
![alt text](image-13.png)

Creating a service role:
![alt text](image-14.png)

Attaching it to instance:
![alt text](image-15.png)
![alt text](image-16.png)

uploaded files:
![alt text](image-17.png)

d. Verify that files are uploaded in S3 Bucket.
![alt text](image-18.png)

---

# 3. EC2 & User-data
## a. Task 1
i. Create an EC2 instance in default VPC with SSH-Keys & Public IP enabled.
making sure the ports are enabled
![alt text](image-19.png)

ii. Prepare user data to automatically install Nginx service and access it using
ec2-public-ip-here:80
![alt text](image-20.png)
![alt text](image-21.png)


## b. Task 2
i. Create an EC2 instance in default VPC with SSH-Keys & Public IP enabled.
making sure the ports are enabled:
![alt text](image-22.png)

ii. Create user-data to install docker on EC2.
![alt text](image-23.png)

iii. Create 2 docker containers, apache and nginx using user-data.

![alt text](image-24.png)

iv. Access content of both containers using IP:8080 (for apache), IP:80 (for
nginx
![alt text](image-25.png)
![alt text](image-26.png)

---

# task 4: Access Private EC2 instance
a. Create EC2 in Private Subnet and SSH into it.

b. Create a flow (network) diagram that should show - how you are accessing your Private
EC2.
