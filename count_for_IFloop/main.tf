
resource "aws_instance" "my_instance" {
  count         = var.env == "prod" ? 3 : 1 # Create 3 instances in "prod", only 1 in other environments
  ami           = data.aws_ami.ubuntu_latest.id
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-${count.index + 1}"
  }
}
