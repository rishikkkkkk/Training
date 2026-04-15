# Creating an IAM user in AWS and giving only required permissions to user and create a S3 bucket

## Create IAM User
![alt text](images/image.png)
## Added Perms for S3 policy
![alt text](images/imaggg.png)
## Creating bucket with unique bucket name:
![alt text](images/image-3.png)
## Verified the buckets
![alt text](images/image-4.png)
![alt text](images/image-5.png)

---

# Create an IAM Role, give only required permissions to this iam-role, and delete above created S3 bucket using this iam-role.

## Create IAM Role
![alt text](images/image-6.png)
## Add Trust Policy (User → Role)
![alt text](images/image-7.png)
## Add S3 Delete Policy
![alt text](images/image-8.png)
## created policy with ls and delete permission
![alt text](images/image-9.png)
## Assume Role
![alt text](images/image-10.png)
## Deleted Bucket & verified
![alt text](images/image-11.png)

---

#  Test Trust Relationship policy by creating an IAM-ROLE-1 who will use (assume)IAM-ROLE-2 and will create S3 Bucket. Ensure that IAM-ROLE-1 should not have any permission for S3 bucket.

## Create IAM Role 1 & IAM Role 2
![alt text](images/image-12.png)
## added trust policy Allow Role1 → Assume Role2
![alt text](images/image-13.png)
## Gave s3 full perms to Asuume role 2 
![alt text](images/image-14.png)
## added trust policy Attach Role1 to User
![alt text](images/image-15.png)
## No s3 perms to assume role 1
![alt text](images/image-16.png)
## Logged into the user using cli
![alt text](images/image-17.png)
## Assume Role 1
![alt text](images/image-18.png)
## Assume role 2
![alt text](images/image-19.png)
## Created bucket
![alt text](images/image-20.png)
## Verified bucket
![alt text](images/image-21.png)
