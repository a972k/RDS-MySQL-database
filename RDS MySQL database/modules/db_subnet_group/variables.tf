# define variables for the db_subnet_group module
variable "subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
}