#  Create Basic VNet Peering
```Objective: Create two Azure Virtual Networks and peer them together so they can communicate as if they were on the same physical network.```
## Actions:
### Create VNet-Dev:
![alt text](img/image.png)
### Create VNet-Test:
![alt text](img/image-1.png)
### Create VNet Peering:
![alt text](img/image-2.png)

---

# Test VM-to-VM Connectivity
```Objective: Deploy VMs and prove that VNet peering successfully routes traffic over the Azure private backbone.```
## Actions:
### Create VM in VNet-Dev:
![alt text](img/image-3.png)
![alt text](img/image-4.png)
### Create VM in VNet-Test:
![alt text](img/image-5.png)
![alt text](img/image-6.png)

![alt text](img/image-7.png)
### Test connectivity:
![alt text](img/image-8.png)
Open a terminal/command prompt and ping the private IP of 
VM-Test : 
![alt text](img/image-9.png)

---

# NSG and Traffic Control
```Objective: Understand how Network Security Groups (NSGs) act as firewalls to control traffic even between peered VNets.```
## Actions:
![alt text](img/image-10.png)

### Attach an NSG to VNet-Test subnet:
![alt text](img/image-11.png)

### Add an explicit block rule:
![alt text](img/image-12.png)

![alt text](img/image-13.png)
## Add an allow rule:
10.0.0.0/16 .
![alt text](img/image-15.png)

![alt text](img/image-16.png)

---

#  Hub-and-Spoke Peering
```Objective: Build an enterprise-grade Hub-and-Spoke architecture where central services live in the hub, and workloads live in the spokes.```
## Actions:
Create VNets:
Hub-VNet : 
10.10.0.0/16
![alt text](img/image-17.png)
Spoke-Dev : 
10.20.0.0/16
![alt text](img/image-18.png)
Spoke-Test : 
10.30.0.0/16
![alt text](img/image-19.png)
Peer the networks:
![alt text](img/image-20.png)
Enable Transit (Crucial Action):
In the peering settings for the Hub, enable "Allow forwarded traffic".
### Validation:

---

# Troubleshooting VNet Peering
```Objective: Learn how to identify and fix common network routing issues in Azure.```
## Actions:
### Break the configuration:
![alt text](img/image-21.png)

### Observe the failure:
![alt text](img/image-22.png)

### Check Effective Routes (The ultimate troubleshooting tool):
![alt text](img/image-23.png)

### Fix the issue:
![alt text](img/image-24.png)

### Validation:
![alt text](img/image-25.png)

