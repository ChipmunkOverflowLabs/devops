output "connectionName" {
  value       = google_sql_database_instance.primaryDb.connection_name
  description = "The connection name of the CloudSQL instance"
}

output "publicIpAddress" {
  value       = google_sql_database_instance.primaryDb.public_ip_address
  description = "The public IP of the SQL instance"
}
