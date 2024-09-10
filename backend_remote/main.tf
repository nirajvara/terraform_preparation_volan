resource "aws_key_pair" "deployer" {
  key_name   = "my_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "myec2" {
  ami           = "ami-0522ab6e1ddcc7055"  # Replace with your AMI ID
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
#  subnet_id     = "subnet-028897ad18da72f13"
#  vpc_security_group_ids = [aws_security_group.my-sg.id]
#  associate_public_ip_address = "true"
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name


  tags = {
    Name = "my-instance"
  }
}
