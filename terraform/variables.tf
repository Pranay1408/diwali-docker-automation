variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "diwali_key"
}

variable "public_key_path" {
  default = "~/.ssh/diwali_key.pub"
}
