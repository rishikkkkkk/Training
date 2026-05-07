# Private Endpoint & Private DNS Zone (Azure Portal Version)

## Lab Overview

### Objective
```In this lab you will secure an Azure Storage Account by removing its public internet exposure and routing all access through a Private Endpoint inside a Virtual Network. You will then configure a Private DNS Zone so that DNS names resolve correctly to the private IP address.```

## Section 1 — Set Up Foundation Resources

### Step 1.1 — Create the Resource Group

![alt text](img/image.png)

### Step 1.2 — Create the Virtual Network

![alt text](img/image-1.png)

### Step 1.3 — Create the VM Subnet

![alt text](img/image-2.png)

### Step 1.4 — Create the Private Endpoint Subnet

![alt text](img/image-3.png)

---

## Section 2 — Create the Storage Account

### Step 2.1 — Create the Storage Account

![alt text](img/image-4.png)

### Step 2.2 — Disable Public Access

![alt text](img/image-5.png)

---

## Section 3 — Create the Private Endpoint

### Step 3.1 — Open the Storage Account Networking Page

![alt text](img/image-6.png)

### Step 3.2 — Configure the Private Endpoint Basics

![alt text](img/image-6.png)

### Step 3.3 — Connect to the Storage Account

![alt text](img/image-7.png)

### Step 3.4 — Select the VNet and Subnet

![alt text](img/image-8.png)

### Step 3.5 — Configure DNS Integration

![alt text](img/image-9.png)

Click Review + Create.

Click Create.

### Step 3.6 — Verify the Private IP

![alt text](img/image-10.png)

---

## Section 4 — Verify the Private DNS Zone

### Step 4.1 — Open the Private DNS Zone

![alt text](img/image-11.png)

### Step 4.2 — Verify the VNet Link

![alt text](img/image-12.png)

### Step 4.3 — Verify the DNS Record

![alt text](img/image-13.png)

---

## Section 5 — Deploy a Test VM and Verify

### Step 5.1 — Create the Linux VM

![alt text](img/image-14.png)

### Step 5.2 — Configure Networking

![alt text](img/image-15.png)

### Step 5.3 — Connect to the VM

![alt text](img/image-16.png)

### Step 5.4 — Verify DNS Resolution

![alt text](img/image-17.png)

### Step 5.5 — Test Storage Access

Create a container:

![alt text](img/image-18.png)

Upload a test file:

![alt text](img/image-19.png)

#### Verify

![alt text](img/image-20.png)

Here is the file we uploaded but we cant access it.

```To access it we have to make storage account public just to verify and we will move back to private```

![alt text](img/image-21.png)