# Create the Virtual Network & Tiered Subnets

##  Why three subnets?
```This is the classic "3-Tier Architecture." The Web subnet faces theninternet. The App subnet processes logic and should only talk to the Web subnet. The DB subnet holds data and should only talk to the App subnet. ```

## Actions:

1. Log in to the Azure Portal.

![alt text](img/image.png)

2. Search for Virtual Networks and click + Create.

![alt text](img/image-9.png)

3. Basics Tab:
    Resource Group: Create new: 
    ```Name: [Your-Name]-VNet```
    ```RG-[Your-Name]-SecurityLab .```
    ```Region: East US (or your preferred region).```

![alt text](img/image-8.png)

4. IP Addresses Tab:
    IPv4 address space: Ensure it is ```10.0.0.0/16 .```
    Under Subnets, delete the default one and add these three:
    ```Name: web-subnet | Range: 10.0.1.0/24```

    ![alt text](img/image-3.png)

    ```Name: app-subnet | Range: 10.0.2.0/24```

    ![alt text](img/image-4.png)

    ```Name: db-subnet | Range: 10.0.3.0/24```

    ![alt text](img/image-5.png)

5. Click Review + Create, then Create.

![alt text](img/image-6.png)


#  Create Network Security Groups (NSGs)
```We need two distinct security policies: one for the Web tier, and a stricter one for the App tier.```

## Actions:

1. Search for Network Security Groups and click + Create.

2. Create the Web NSG:
    ```Name: NSG-Web```

    ![alt text](img/image-10.png)

    ```Resource Group: RG-[Your-Name]-SecurityLab```

    ![alt text](img/image-8.png)

    Click Create.
3. Create the App NSG:
    ```Repeat the process to create a second NSG named [NSG-App] .```

    ![alt text](img/image-11.png)


# Configure NSG Rules & Associate to Subnets


## Why attach to the Subnet and not the VM?
```While you can attach an NSG directly to a VM's Network Card (NIC), attaching it to the Subnet is best practice. It ensures that any VM you drop into that subnet automatically inherits the correct security rules, preventing accidental exposure.```

## Actions for NSG-Web:
1. Go to ```NSG-Web -> Inbound security rules -> + Add.```

2. Create a rule to allow your PC to connect:

![alt text](img/image-12.png)

3. Go to Subnets (under Settings) -> + Associate. Select your VNet and the Web Subnet

![alt text](img/image-13.png)

## Actions for NSG-App:
1. Go to NSG-App -> Inbound security rules -> + Add.

2. Create a rule that only allows traffic from the Web subnet:

![alt text](img/image-14.png)

3. Go to Subnets -> + Associate. Select your VNet and the app-subnet

![alt text](img/image-15.png)


#  Deploy the Test Virtual Machines
```Let's drop a VM into each subnet to test our security.```
## Actions:
1. Create VM-1 (The Web Server):
```
    Name: [Your-Name]-VM-Web
    Image: Ubuntu Server.
    Network: Select [Your-Name]-VNet and web-subnet .
    Public IP: Create new.
    NIC network security group: Select None (Because our Subnet already has the NSG attached!).
```
![alt text](img/image-16.png)

![alt text](img/image-17.png)

2. Create VM-2 (The App Server):
```
    Name: [Your-Name]-VM-App
    Image: Ubuntu Server.
    Network: Select [Your-Name]-VNet and app-subnet .
    Public IP: Create new.
    NIC network security group: Select None
```
![alt text](img/image-18.png)

![alt text](img/image-21.png)


![alt text](img/image-22.png)

# Test the NSG Security (The "Jumpbox" Simulation)
```Let's prove the rules work by trying to break in.```
## Actions:
1. Try to hack the App VM: Find the Public IP of from your home computer terminal.

![alt text](img/image-23.png)
    
Result: ```It will TIME OUT. Your [Your-Name]-VM-App and try to SSH into it NSG-App is successfully blocking the public internet!```

2. Connect legally: SSH into [Your-Name]-VM-Web using its Public IP.

![alt text](img/image-24.png)

Result: ```SUCCESS.```

3. The "Jump" (Lateral Movement): ```While logged into VM-Web , run an SSH command to connect to the Private IP of VM-App (e.g., ssh azureuser@10.0.2.4 ).```

![alt text](img/image-25.png)

Result: ```SUCCESS. The NSG-App sees the traffic coming from through.```

# Route Traffic Using Route Tables
```Currently, VM-App can browse the public internet to download updates. In a highly secure environment, backend servers should never touch the internet directly. Let's block it using routing.```

```How do Route Tables work? By default, Azure puts a hidden "SystemRoute" on every subnet that points 0.0.0.0/0 (all internet traffic) to the Azure Internet Gateway. A Custom Route Table overrides this default behavior.```

## Actions:

1. Verify Current State: While SSH'd into VM-App , type ping google.com. It will successfully reply. Stop the ping using Ctrl + C .
 
![alt text](img/image-26.png)

2. Go to the Azure Portal, search for Route Tables, and click + Create.
    Name: RT-AppSubnet
    Resource Group: RG-[Your-Name]-SecurityLab
    Region: East US. Click Create.

![alt text](img/image-27.png)

3. Open RT-AppSubnet , go to Routes -> + Add.
    Route name: Block-Internet
    Destination type: IP Addresses
    Destination IP addresses/CIDR ranges: 0.0.0.0/0 (This means "any destination").
    Next hop type: Select None. (This acts as a black hole, dropping the traffic).

![alt text](img/image-28.png)

4. Go to Subnets -> + Associate. Select your VNet and the app-subnet .

![alt text](img/image-29.png)

5. Verify the Fix: Go back to your SSH session on VM-App and type ping google.com again.

![alt text](img/image-30.png)

Result: It will now fail/time out. The Route Table has successfully locked down outbound 
internet access.


