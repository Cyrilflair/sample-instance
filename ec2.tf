provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web_server_ec2" {
  ami = "ami-0851b76e8b1bce90b"
	instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
	key_name = "keypair"
  subnet_id = "subnet-0ae55cba67cf72ec2"
  vpc_security_group_ids = ["sg-0fa19f815cca59b5b"]
  associate_public_ip_adress = true
  
}
