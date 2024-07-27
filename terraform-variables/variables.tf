variable "filename" {
	default = "/home/ubuntu/terraform-course/terraform-variables/devops-automated.txt"
}

variable "content" {
	default = "This is auto generated from a variable"
}

#export TF_VAR_devops_op_trainer=TrainWithShubhamLonde
variable "devops_op_trainer" {}

variable "content_map" {
	type = map
	default = {
		"content1" = "This is cool content 1"
		"content2" = "This is cool content 2"
	}
}

variable "file_list" {
        type = list(string)
        default = [
		"/home/ubuntu/terraform-course/terraform-variables/file1.txt",
		"/home/ubuntu/terraform-course/terraform-variables/file2.txt"
        ]
}

variable "aws_ec2_object" {
	type = object({
		name = string
		instances = number
		keys = list(string)
		ami = string
	})
	default = {
                name = "test_ec2_instance"
                instances = 4
                keys = ["key1.pem", "key2.pem"]
                ami = "ubuntu-afed34"
        }
}

variable "no_of_students" {}
