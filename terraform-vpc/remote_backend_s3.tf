terraform {
  backend "s3" {
    bucket = "dev-proj-1-ec2-remote-state-bucket-123456"
    key    = "devops-project-1/ec2/terraform.tfstate"
    region = "ca-central-1"
  }
}