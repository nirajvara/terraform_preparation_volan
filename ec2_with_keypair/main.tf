module "vpc" {
source = "../vpc"
#source = "/root/terraform/vpc"
}


resource "aws_key_pair" "deployer" {
  key_name   = "my_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "myec2" {
  ami           = "ami-0522ab6e1ddcc7055"  # Replace with your AMI ID
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
  subnet_id     = module.vpc.niraj-1[0]
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  associate_public_ip_address = "true"

  tags = {
    Name = "my-instance"
  }
}
