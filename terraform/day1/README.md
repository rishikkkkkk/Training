## Install and Verify Terraform

![alt text](img/image.png)

## Setup Terraform Alias

![alt text](img/image-1.png)

## Create First Terraform Resource

```In this lab, AWS provider configuration and the first VPC resource were created using Terraform.```

### Provider Configuration

![alt text](img/image-2.png)

### Resource

![alt text](img/image-3.png)

### Terraform Plan

![alt text](img/image-4.png)

This command checks the Terraform configuration and shows what infrastructure changes Terraform is going to perform.

### Terraform Validate

![alt text](img/image-5.png)

### Terraform Apply

![alt text](img/image-6.png)

### Terraform State

![alt text](img/image-7.png)

### Verified by console:

![alt text](img/image-8.png)

### Terraform Destroy:

![alt text](img/image-9.png)

---

## Create Multiple Resources Using Terraform

### Create  EC2 Resource

![alt text](img/image-11.png)

### Verify EC2 instance:

![alt text](img/image-10.png)

### Create VPC

![alt text](img/image-13.png)

![alt text](img/image-12.png)

Terraform detected another new infrastructure resource.

### Applied 

![alt text](img/image-14.png)

### Verify VPC resource:

![alt text](img/image-15.png)

## Now we will try changing existing resource
Changed the CIDR block

![alt text](img/image-17.png)

Changing some properties like:

cidr_block
forces Terraform to:

Destroy existing resource

![alt text](img/image-16.png)

Create a new replacement resource

![alt text](img/image-18.png)

### applied changes

![alt text](img/image-19.png)

#### Previous cidr was ```10.0.0.0/16```
![alt text](img/image-20.png)

#### Now updated cidr is ```10.1.0.0/16```
![alt text](img/image-21.png)

### Now testsing refresh

Here i have changed instance name tag from previous v1 to ```test-instance``

![previous](img/image-23.png)

![changed instance tags](img/image-22.png)

### now used refresh
```what it does is it pulls all changes that were performed directly in AWS Console```

checked the tfstate file to see it has updated or not

![alt text](img/image-24.png)


| Command      | Meaning                                    |
| ------------ | ------------------------------------------ |
| `tf plan`    | “Shows what Terraform WILL do before applying changes”        |
| `tf refresh` | “Updates Terraform state file with REAL cloud infrastructure state.” |


### Commands

| Command       | Purpose                                                    |
| ------------- | ---------------------------------------------------------- |
| `tf validate` | Checks Terraform configuration for errors.                 |
| `tf fmt`      | Formats Terraform files properly.                          |
| `tf show`     | Displays current Terraform-managed infrastructure details. |
| `tf state`    | Manages and views Terraform state information.             |
| `tf plan`     | Shows what changes Terraform will make.                    |
| `tf apply`    | Creates or updates infrastructure.                         |
| `tf destroy`  | Deletes Terraform-managed resources.                       |
| `tf init`     | Initializes Terraform project and downloads providers.     |
| `tf refresh`  | Syncs Terraform state with real infrastructure.            |

