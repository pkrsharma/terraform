terraform {
   required_providers {
        aws = {
         source  = "hashicorp/aws"
         version = "~> 4.16"
      }
   }
   required_version = ">= 1.2.0"
}

provider "aws"{
   region = "us-east-1"
}

locals {
	instances = {
      "Devendra": "ami-0b0dcb506*****",
      "Braj": "ami-08c40ec9ead4*****",
      "Abrar": "ami-08c40ec9ead4*****",
      "Nimo": "ami-0b0dcb5067f05*****"
   }
}

resource "aws_instance""aws_ec2_test"{
   for_each = local.instances
   ami = each.value
   instance_type = "t2.micro"
   tags = {
      Name = each.key
   }
}`
