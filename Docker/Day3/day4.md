# Bridge
### created a container con1 and cont2 for checking default bridge connection
![alt text](images/image.png)
![alt text](images/image-1.png)
### now we will check that the second container pings or not using the first container ip address:
### ip address in cont2
![alt text](images/image-4.png)
### ip address in cont1
![alt text](images/image-2.png)
### now to actually check bridge is working or not we will ping in cont1 using the ip of cont2
as we can see here from cont1 we can actually ping cont2 usig its ip.
![alt text](images/image-3.png)

# Host
### firstly we will create the cont using host
![alt text](images/image-10.png)
![alt text](images/image-9.png)
### as we can see in inspect ip add has no val it means it is directly using the hosts ip address.
![alt text](images/image-11.png)

# none

![alt text](images/image-12.png)
![alt text](images/image-13.png)
### as we can see using none cont has no internet access
![alt text](images/image-15.png)


# Custom
### to create custom we can use command: docker network create custom-net
![alt text](images/image-5.png)
### now creating a new container using that custom network
![alt text](images/image-7.png)
### verifying using inspect
![alt text](images/image-8.png)
### going to cont1 and trying to ping the ip address of custom-demo
![alt text](images/image-6.png)
as we can see no req coming.
