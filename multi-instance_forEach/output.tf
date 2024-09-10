output "instance_ids" {
  value = { for instance in aws_instance.my-ec2 : instance.tags["Name"] => instance.id }
}

output "instance_names" {
  description = "The names of the created EC2 instances"
  value       = [for instance in aws_instance.my-ec2 : instance.tags["Name"]]
}

