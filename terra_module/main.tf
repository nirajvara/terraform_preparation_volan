
module "ec2-instance" {
  source        = "./ec2"
#}
#resource "aws_instance" "new-1" {
  #tfvars = true
  image_id      = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"
  key_name      = "newpem"

}
