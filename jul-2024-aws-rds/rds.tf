resource "aws_db_instance" "dbInstance" {
  allocated_storage    = var.dbAllocatedStorage
  engine               = "postgres"
  engine_version       = "16.3"
  instance_class       = var.dbInstanceClass
  name                 = "productionAppDb"
  username             = "postgres"
  password             = var.dbPassword
  parameter_group_name = "default.postgres16"
  skip_final_snapshot  = true
}
