# Auto-Scaling
```To create auto-scaling we firstly have to create a launch template.```

### Launch Template:
```A launch template is like a blueprint were we define what specified launch parameters in a template that can be used for on-demand launches and with managed services, including EC2 Auto Scaling```

---

## Creating Launch Template:
![alt text](images/image.png)

## Creating Auto-Scaling Group:

### Selecting the launch template we made above:
![alt text](images/image-1.png)

### Adding the need parameters:
![alt text](images/image-2.png)

![alt text](images/image-3.png)

### Set desired no. of instances:
![alt text](images/image-4.png)

### Reviewing all the parameters:
![alt text](images/image-5.png)

![alt text](images/image-6.png)

### 3 instance launched
![alt text](images/image-9.png)

### tested by terminating one instance:
![alt text](images/image-10.png)
---