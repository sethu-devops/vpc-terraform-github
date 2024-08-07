module "networking" {
  source               = "./networking"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  cidr_public_subnet   = var.cidr_public_subnet
  availability_zone = var.availability_zone
  cidr_private_subnet  = var.cidr_private_subnet
}

module "security_group" {
  source              = "./security-groups"
  ec2_sg_name         = "SG for EC2 to enable SSH(22), HTTPS(443) and HTTP(80)"
  vpc_id              = module.networking.dev_proj_1_vpc_id
  
}

module "ec2" {
  source                    = "./ec2"
  ami_id                    = var.ami_id
  
  tag_name                  = "Jenkins:Ubuntu Linux EC2"
  
  subnets              = tolist(module.networking.subnets)[0]
  sg_id           = module.security_group.sg_id
  enable_public_ip_address  = true
  
}

module "alb" {
  source = "./load-balancer-target-group"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnets
  vpc_id = module.vpc.vpc_id
  instances = module.ec2.instances
}





module "hosted_zone" {
  source          = "./hosted-zone"
  domain_name     = "devops.org"
  aws_lb_dns_name = module.alb.aws_lb_dns_name
  aws_lb_zone_id  = module.alb.aws_lb_zone_id
}

module "ceritificate-manager" {
  source = "./ceritificate-manager"
  domain_name = "devops.org"
  hosted_zone_id = module.hosted_zone.hosted_zone_id
  
}