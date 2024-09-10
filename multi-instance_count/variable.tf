variable "instance_names" {
  description = "List of EC2 instance names"
  type        = list(string)
  default     = ["instance-30", "instance-40", "instance-50"]
}
