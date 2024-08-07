variable "ami_id" {
    description = "AMI ID For EC2"
    type = string
}


variable "tag_name" {
    description = "web"
    type = string
    default = "web"
}

variable "subnets" {
    description = "Subnets for EC2"
  type = string
}


variable "sg_id" {
    description = "SG ID for EC2"
  type = string
}


variable "enable_public_ip_address" {
    description = "enable public ip address"
}