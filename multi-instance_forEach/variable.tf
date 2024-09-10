variable "instance_names" {
  description = "List of EC2 instance names"
  type        = list(string)
  default     = ["instance-1", "instance-2", "instance-3"]
}
