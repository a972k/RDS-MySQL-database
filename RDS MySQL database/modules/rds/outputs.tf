# Outputs for the RDS module
output "db_endpoint" {
  description = "RDS database endpoint"
  value       = aws_db_instance.rds_instance.endpoint
}