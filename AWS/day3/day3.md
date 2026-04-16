# Task 1. Simple EC2 Instance
a. Create an EC2 instance (OS: Ubuntu) in default VPC
![alt text](images/image.png)

b. Enable Public-IP
![alt text](images/image-1.png)

c. Create SSH-KeyPair
![alt text](images/image-2.png)

d. Let it create a default security-group for you
![alt text](images/image-3.png)

e. Keep root volume size 20GB.
![alt text](images/image-4.png)

## Verified Everything on the console:
![alt text](images/image-5.png)
![alt text](images/image-6.png)
![alt text](images/image-7.png)
![alt text](images/image-8.png)

---

# 2. EC2, S3 & Instance Profile
a. Create an EC2 instance in default VPC with Public IP enabled.
![alt text](images/image-9.png)

b. SSH into EC2 instance using keypairs
![alt text](images/image-10.png)

c. Use awscli to upload some data (pdf, images/image, txt files) to S3 bucket (you can create s3
using GUI).
To use aws cli we have to firstly install awscli:
![alt text](images/image-11.png)
![alt text](images/image-13.png)

Creating a service role:
![alt text](images/image-14.png)

Attaching it to instance:
![alt text](images/image-15.png)
![alt text](images/image-16.png)

uploaded files:
![alt text](images/image-17.png)

d. Verify that files are uploaded in S3 Bucket.
![alt text](images/image-18.png)

---

# 3. EC2 & User-data
## a. Task 1
i. Create an EC2 instance in default VPC with SSH-Keys & Public IP enabled.
making sure the ports are enabled
![alt text](images/image-19.png)

ii. Prepare user data to automatically install Nginx service and access it using
ec2-public-ip-here:80
![alt text](images/image-20.png)
![alt text](images/image-21.png)


## b. Task 2
i. Create an EC2 instance in default VPC with SSH-Keys & Public IP enabled.
making sure the ports are enabled:
![alt text](images/image-22.png)

ii. Create user-data to install docker on EC2.
![alt text](images/image-23.png)

iii. Create 2 docker containers, apache and nginx using user-data.

![alt text](images/image-24.png)

iv. Access content of both containers using IP:8080 (for apache), IP:80 (for
nginx
![alt text](images/image-25.png)
![alt text](images/image-26.png)

---

# task 4: Access Private EC2 instance
a. Create EC2 in Private Subnet and SSH into it.
Firstly we will log into the public ec2 server using ssh
![alt text](images/t1.png)

add our public ec2 key to our server and give permissions:
![alt text](images/t2.png)

now using that key we can log in to our private ec2 server

![alt text](images/t3.png)


b. Create a flow (network) diagram that should show - how you are accessing your Private
EC2.
![alt text](images/imaggg.png)