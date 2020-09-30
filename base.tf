provider "aws" {
	access_key = ${{ secrets.ACCESS_KEY_ID }}
	secret_key = ${{ secrets.SECRET_ACCESS_KEY }}
	region= "us-east-1"
}

/*data "aws_ami" "ubuntu" {
	filter {
   		 name   = "virtualization-type"
   		 values = ["hvm"]
		}
 	 owners = ["self"]
}*/

# This is a single-line comment.
resource "aws_instance" "base" {
	ami= "ami-0c94855ba95c71c99"
	instance_type = "t2.micro"
  	tags = {
    		Name = "HelloWorld"
  	}
}
