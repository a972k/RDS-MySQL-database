#define the security gruop for RDS ussing port 3306 
resource "aws_security_group" "rds_sg" {
  name        = "rds-security-group"
  description = "Allow MySQL traffic"
  vpc_id      = module.vpc.vpc_id  # Reference the VPC you created earlier

# Define the ingress rules for the security group
 ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow traffic from anywhere 
  }



# Define the egress rules for the security group
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
# Define the tags for the security group
    tags = {
    Name = "DB Security Group"
  }
}