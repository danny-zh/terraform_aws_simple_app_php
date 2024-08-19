variable "aws_instance_ami" {
  type        = string
  default     = "ami-0ae8f15ae66fe8cda"
  description = "Amazon Linux 2023 AMI"
}

variable "aws_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "t2 micro free eligible tier"
}