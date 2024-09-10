resource "aws_instance" "myinstance" {

  ami           = var.image_id
  instance_type = var.instance_type
  key_name = var.key_name
}
output "instance_ip_addr" {
  value = aws_instance.myinstance.private_ip
}


