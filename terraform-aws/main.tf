terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 4.16"
		}
	}
	required_version = ">= 1.2.0"
}

provider "aws" {
	region = "ap-south-1"
}

#count = 4 (newly created instances limit of same configuration type)
resource "aws_instance" "my_ec2_instance_terraform" {
	#count = 4
	ami = "ami-0ad21a**********"
	instance_type = "t2.micro"
	tags = {
		Name = "TerraformLearnAWS-Instance"
	}
}

output "Public_IP_of_TerraformLearnAWS-Instance" {
	#Use when we creating multiple instances with help of count variable in resource
	#value = aws_instance.my_ec2_instance_terraform[*].public_ip
	
	#use when we are creating only single instance and count neither set nor count = 1 only
	value = aws_instance.my_ec2_instance_terraform.public_ip
}

#output "Response_Of_TerraformLearnAWS-Instance" {
#        value = aws_instance.my_ec2_instance_terraform
#}

# CREATE S3 Bucket

resource "aws_s3_bucket" "my_s3_bucket" {
	bucket = "terraform-trainwithshubham-day3"
	tags = {
		Name = "terraform-trainwithshubham-day3"
		Environment = "Dev" #Optional
	}
}
