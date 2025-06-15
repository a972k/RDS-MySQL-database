# define variables for the security group module
variable "allowed_cidr" {
  description = "CIDR block allowed to access RDS"
  type        = string
  default     = "0.0.0.0/0"
}