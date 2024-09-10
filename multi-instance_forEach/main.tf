resource "aws_instance" "my-ec2" {
  for_each = toset(var.instance_names)

  ami           = "ami-0522ab6e1ddcc7055" # Replace with your AMI ID
  instance_type = "t2.micro"

  tags = {
    Name        = each.key
    environment = "Production"
    Project     = "Dev"
    Role        = each.key == "instance-1" ? "Web" : each.key == "instance-2" ? "Database" : "admin"

  }
}
