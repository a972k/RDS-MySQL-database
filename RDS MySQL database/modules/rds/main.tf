# cre
resource "aws_db_instance" "rds_instance" {
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"  # !!!Adjust based on your needs
  allocated_storage = 20
  multi_az         = true
  db_name          = "labdatabase"
  username         = var.db_username
  password         = var.db_password
  db_subnet_group_name = module.db_subnet_group.db_subnet_group_name
  vpc_security_group_ids = [module.security_group.security_group_id]

  skip_final_snapshot = true
  publicly_accessible = false

  tags = {
    Name = "labRDSInstance"
  }
}