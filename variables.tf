variable "jump_host_enabled" {
  description = "Enable jump host"
  default = true
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "ami" {
  description = "AMI for jump host"
  default = "ami-02c6f7952af6bd632"
}

variable "instance_type" {
  description = "Instance type for jump host"
  default = "t2.micro"
}

variable "key_name" {
    description = "SSH key name for connection to jump host"
}

variable "subnet_id" {
  description = "ID of a PUBLIC sumnet, whene jump host will be placed"
}
