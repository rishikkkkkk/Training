# Tasks for RDS
1. Create Amazon RDS (MySQL) in private subnet
![alt text](img/image-10.png)
![alt text](img/image-11.png)

2. Launch EC2 in public subnet → connect using mysql CLI
![alt text](img/image-12.png)
3. Inside RDS create:
a. Multiple databases
b. Separate db-users per database
![alt text](img/image-1.png)
4. Test:
a. SSH into EC2 → Use mysql client to access DB-A via User-A → Perform actions
via User A
![alt text](img/image.png)
b. SSH into EC2 → Use mysql client to access DB-B via User-B → Perform actions
via User A
![alt text](img/image-2.png)
![alt text](img/image-3.png)
5. Break/fix:
a. Block DB via Security Group → restore access
Removed access via Security Group
![alt text](img/image-5.png)
![alt text](img/image-6.png)
Restore access via Security Group
![alt text](img/image-4.png)
![alt text](img/image-7.png)
6. Take snapshot → modify instance type   
![alt text](img/image-8.png)
![alt text](img/image-9.png)


# Tasks for ElastiCache
1. Create Amazon ElastiCache (Redis) in private subnet
2. Enable auth (password/token)
3. Connect from Public EC2 using redis-cli
4. Perform:
SET / GET
TTL (expiry)
5. Break/fix:
Block access via Security Group → fix
6. Enable replica → identify primary/replica
7. Change node type (scaling)