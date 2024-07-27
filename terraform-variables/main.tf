resource "local_file" "devops" {
	filename = var.file_list[0]
	content= var.content_map["content1"]
}

resource "local_file" "devops-var" {
	filename = var.filename
	content = var.content
}

output "devops_op_trainer" {
	value = var.devops_op_trainer
}

output "map_type_content" {
        value = var.content_map["content2"]
}

output "second_filename_from_list" {
        value = var.file_list[1]
}

output "aws_ec2_instances" {
        value = var.aws_ec2_object
}


output "tf_batch_students" {
	value = var.no_of_students
}
