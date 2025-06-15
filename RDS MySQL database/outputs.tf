# output of the VPC, security group, DB subnet group, and RDS instance modules
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.security_group.security_group_id
}

output "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  value       = module.db_subnet_group.db_subnet_group_name
}

output "rds_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = module.rds.db_endpoint
}