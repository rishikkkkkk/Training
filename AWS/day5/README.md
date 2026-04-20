# Tasks for VPC

## Create a custom VPC, having

1.  1xIGW (internet gateway)
![alt text](img/image.png)

2.  1xNAT Gateway
![alt text](img/image-1.png)

3.  3xPublic Subnet
![alt text](img/image-2.png)

4.  3xPrivate Subnet
![alt text](img/image-3.png)

5.  All 3 private subnet has route to NAT Gateway for Internet access (0.0.0.0/0 )
![alt text](img/image-4.png)

6.  All 3 public subnet has route to IGW for Internet access (0.0.0.0/0 )
![alt text](img/image-5.png)

7.  Update NACL & Security Group rules to allow traffic from Internet (0.0.0.0/0 )
![alt text](img/image-6.png)

![alt text](img/image-7.png)

8.  Launch an EC2 in PUBLIC subnet, run ```sudo yum update``` or ```sudo apt-get update``` > install nginx server and access the webpage.
![alt text](img/image-8.png)

### sshing the pub ec2 
![alt text](img/image-9.png)

### installed nginx and tested update
![alt text](img/image-10.png)

### accessing the webpage
![alt text](img/image-11.png)

9.  Launch an EC2 in PRIVATE subnet, run ```sudo yum update``` or ```sudo apt-get update``` > install nginx server and access the webpage using ```curl -I http://Private-EC2-IP:80```
![alt text](img/image-12.png)

### ssh the private ec2 in public ec2
![alt text](img/image-13.png)

### installed nginx and tested update
![alt text](img/image-14.png)

### accessing curl from pub-ec2 using private ec2 private ip
![alt text](img/image-15.png)
