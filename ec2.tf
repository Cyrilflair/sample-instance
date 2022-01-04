provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "public-web-ec2" {
  ami                         = "ami-052cef05d01020f1d"
  instance_type               = "t2.micro"
  availability_zone           = "ap-south-1a"
  key_name                    = "keypair"
  subnet_id                   = "subnet-0ae55cba67cf72ec2"
  vpc_security_group_ids      = ["sg-0fa19f815cca59b5b"]
  associate_public_ip_address = true

}
