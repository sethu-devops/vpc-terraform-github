variable "vpc_cidr" {
    description = "VPC CIDR Range"
  type = string
}
variable "vpc_name" {
    description = "VPC Name"
  type = string
}
variable "cidr_public_subnet" {
    description = "Public Subnet CIDRS"
    type = list(string)
}
variable "availability_zone" {
    description = "Availability Zone"
    type = list(string)
}
variable "cidr_private_subnet" {
    description = "Private Subnet CIDRS"
    type = list(string)
}
