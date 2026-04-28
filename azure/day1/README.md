# Azure Tenant & Core Components
What is a Tenant?

An Azure Tenant is the top-level container in Azure.

Represents your organization
Acts as the root boundary for all resources
Everything in Azure starts under a tenant

Think of it as: Root account / organization level

## Core Components
1.  Subscription
Exists inside a Tenant
Used for:
 Billing
 Resource tracking
 Limits & quotas

A tenant can have multiple subscriptions

2.  Resource Group
Exists inside a Subscription
Logical container to organize resources

Helps in:

Managing related resources together
Easy deployment and deletion

3.  Resources
Actual Azure services:
Virtual Machines
Storage Accounts
Databases
Networking components

These are what you actually create and use.


## AWS vs Azure Services

| Category      | AWS Service              | Azure Service          |
| ------------- | ------------------------ | ---------------------- |
| Compute       | EC2                      | Virtual Machines (VM)  |
| Storage       | S3                       | Blob Storage           |
| Database      | RDS                      | Azure SQL Database     |
| Networking    | VPC                      | Virtual Network (VNet) |
| Load Balancer | ELB / ALB                | Azure Load Balancer    |
| IAM           | IAM                      | Azure Active Directory |
| Serverless    | Lambda                   | Azure Functions        |
| DevOps        | CodePipeline / CodeBuild | Azure DevOps           |
