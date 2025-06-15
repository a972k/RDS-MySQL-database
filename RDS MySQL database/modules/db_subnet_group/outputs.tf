# define the outputs for the db_subnet_group module
output "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  value       = aws_db_subnet_group.rds_subnet_group.name
}