bucket_name = "dev-proj-1-ec2-remote-state-bucket-123456"

vpc_cidr            = "11.0.0.0/16"
vpc_name            = "dev-proj-vpc-1"
cidr_public_subnet  = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet = ["11.0.3.0/24", "11.0.4.0/24"]
availability_zone   = ["ca-central-1a", "ca-central-1b"]

ami_id = "ami-0c9f6749650d5c0e3"