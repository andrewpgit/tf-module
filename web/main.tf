resource "aws_instance" "ec2-instance" { 
	ami = "${var.ami_id}"
	count = "${var.number_of_instances}"
	subnet_id = "${data.terraform_remote_state.network.public_subnet_a}"
	user_data = "${file(var.user_data)}" 
	key_name  = "${var.key_path}"
	instance_type = "${var.instance_type}"

 	tags {
	  value = "${var.instance_name}"
	  Name	= "${var.instance_name}-${count.index}"
	} 

}	

data  "terraform_remote_state" "network" { 
	backend  = "s3"
	
	config {
	  bucket = "${var.net_remote_state_bucket}"
	  key    = "${var.net_remote_state_key}"
	  region = "us-east-1"
	
	}
}
