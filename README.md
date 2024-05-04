# Terraform AWS Infrastructure Setup

This repository contains Terraform code to provision infrastructure on AWS including an Ubuntu EC2 instance and two RDS instances (MySQL and PostgreSQL).

## :desktop_computer: Tutorial
Find complete tutorial on how to use this repository in the following article: [Provisioning AWS Infrastructure with Terraform](https://azeemahmed.notion.site/Creating-AWS-EC2-RDB-instance-using-Terraform-a8b20bc5626a4013a0bb3228c5e4e9a1?pvs=4)

## :memo: Prerequisites

Before you begin, ensure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed locally.
- An AWS account with appropriate permissions.
- AWS CLI installed and configured on your local machine.

## :key: AWS Access Key Generation

To generate access keys for AWS, follow these steps:

1. Log in to the AWS Management Console.
2. Go to the IAM (Identity and Access Management) dashboard.
3. In the left sidebar, click on "Users".
4. Select your IAM user or create a new one if needed.
5. Navigate to the "Security credentials" tab.
6. Under "Access keys", click on "Create access key".
7. Save the generated Access Key ID and Secret Access Key securely.

## :gear: AWS Configuration

After generating the access keys, configure your AWS CLI with the following steps:

1. Open a terminal or command prompt.
2. Run the following command and provide the Access Key ID, Secret Access Key, default region, and default output format when prompted:

```bash
aws configure
```

Example:

```
AWS Access Key ID [None]: YOUR_ACCESS_KEY_ID
AWS Secret Access Key [None]: YOUR_SECRET_ACCESS_KEY
Default region name [None]: us-east-1
Default output format [None]: json
```

## :chart_with_upwards_trend: Usage

1. Clone this repository:
    ```bash
    git clone https://github.com/AzeemQidwai/terraform-aws-infrastructure.git
    ```
2. Navigate to the cloned directory:
   ```bash
   cd terraform-aws-infrastructure
   ```
3. Initialize the Terraform working directory:
    ```bash
    terraform init
    ```
4. Plan the Terraform execution:
    ```bash
    terraform plan
    ```
5. Apply the Terraform configuration:
    ```bash
    terraform apply -auto-approve
    ```
## :broom: Cleanup

When you're done experimenting, clean up the resources to avoid incurring charges:
```bash
terraform destroy -auto-approve
```

## :warning: Note

Ensure that you review all the Terraform configurations before applying them to your AWS account. Provisioned resources may incur costs, and Terraform will create and manage resources as defined in the configuration files.
