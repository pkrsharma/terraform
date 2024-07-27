# Terraform Setup on AWS Console

This guide covers the steps to install and configure Terraform for managing infrastructure on AWS.

## Prerequisites

- An AWS account
- AWS IAM user with appropriate permissions
- AWS CLI installed and configured
- Terraform installed on your machine

## Step 1: Install Terraform on aws console
```sh
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
terraform -v
```

## Step 1: Install Terraform on your operating system

1. **Download Terraform**

   Visit the [Terraform download page](https://www.terraform.io/downloads.html) and download the appropriate binary for your operating system.

2. **Install Terraform**

   - **On macOS**: Use Homebrew
     ```sh
     brew tap hashicorp/tap
     brew install hashicorp/tap/terraform
     ```

   - **On Linux**: Unzip and move the binary
     ```sh
     unzip terraform_VERSION_linux_amd64.zip
     sudo mv terraform /usr/local/bin/
     ```

   - **On Windows**: Unzip and add the binary to your system's PATH.

3. **Verify the Installation**
   ```sh
   terraform -version
