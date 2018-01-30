variable "instance_name" {
	description = "Use for instance name" 
}

variable "instance_type"  { 
	description = "The type of EC2 Instance to run"
	default = "t2.nano"
}

variable  "ami_id" {
	description = "The AMI to use"
}

variable "number_of_instances" {
	description = "number of instances to make"
	default = 1
}

variable "user_data" {
	description = "The path to user_data"
}

variable "tags" {
	default = { 
	created_by = "andrew"
       }
}

variable "net_remote_state_bucket" {
	description = "The name of the S3 bucket for the network's remote state"
}

variable "net_remote_state_key" { 
	description = "The path for the database's  remote state in S3"
}

variable "key_path" {
	description = "The path for ssh key"
}
