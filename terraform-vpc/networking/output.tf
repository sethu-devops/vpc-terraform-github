output "vpc_id" {
  value = aws_vpc.dev_proj_1_vpc_ca_central_1.id
}

output "subnets" {
  value = aws_subnet.dev_proj_1_public_subnets.*.id
}

