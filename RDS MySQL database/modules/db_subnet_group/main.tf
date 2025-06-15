# creat a sbunet group for the RDS instance
resource "aws_db_subnet_group" "rds_subnet_group" {
  name        = "rds-subnet-group"
  description = "Subnet group for RDS"
  subnet_ids  = module.vpc.public_subnets  # Reference VPC subnets

  tags = {
    Name = "rds-subnet-group"
  }
}