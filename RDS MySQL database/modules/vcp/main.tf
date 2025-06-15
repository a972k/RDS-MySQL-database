# vcp main module for creating a VPC in AWS
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name            = "my-vpc"
  cidr           = "10.0.0.0/16"
  enable_dns_hostnames = true
}