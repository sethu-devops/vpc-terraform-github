

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  tags = {
    Name = var.tag_name
  }
  key_name                    = "ec2-key-ca-central-1"
  subnet_id                   = var.subnets
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = var.enable_public_ip_address

  

 
}

