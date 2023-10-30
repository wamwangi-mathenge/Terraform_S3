# Terraform S3 Bucket Provisioning for Event Themes

This Terraform project provisions S3 buckets for different event themes according to the provided guidelines.

## Prerequisites

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. AWS credentials properly configured. You can set them up using the AWS CLI or AWS IAM User access keys.

## Configuration

### Terraform Variables

You can customize the project by modifying the `main.tf` file. Here's how to configure the project:

- **Bucket Naming Convention**: Each bucket follows the naming convention: `<event_theme>-<your_initials>-bucket`. You need to replace `your_initials` with your initials in the Terraform file.
- **Event Themes**: You can choose at least three event themes from the provided list in the `main.tf` file.

### Initialize the Project

Run the following command to initialize the working directory:

```shell
terraform init
```

### Deploy S3 Buckets
```
terraform apply
```

## Destroy S3 Buckets
```
terraform destroy
```

## License
This project is licensed under the MIT License

## Author
Brian Mathenge