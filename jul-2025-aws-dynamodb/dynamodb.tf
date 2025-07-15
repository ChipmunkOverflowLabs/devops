resource "aws_dynamodb_table" "telemetryTable" {
  name           = var.tableNameVal
  read_capacity  = var.readCapacityUnits
  write_capacity = var.writeCapacityUnits
  hash_key       = "logId"

  attribute {
    name = "logId"
    type = "S"
  }
}
