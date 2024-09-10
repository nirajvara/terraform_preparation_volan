resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu_latest.id
  instance_type = "t2.micro"


#provisioner "local-exec" {
#	command = "echo The instance ${self.id} is created with public IP ${self.public_ip}  {self.subnet_id} and {self.instance_type}"
#}

provisioner "local-exec" {
command = "echo ${self.private_ip} and ${self.public_ip} and ${self.subnet_id} and ${self.instance_type}"
}


  tags = {
    Name = "example-instance"
    backup = "Backup"
  }


}
