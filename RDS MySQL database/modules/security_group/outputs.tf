# deffine variables for the security group module outputs
output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.rds_sg.id
}