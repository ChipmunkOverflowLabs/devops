resource "google_sql_database_instance" "primaryDb" {
  name             = "primary-db-instance"
  database_version = "POSTGRES_14"
  region           = var.gcpRegion

  settings {
    tier = var.databaseTier
    ip_configuration {
      ipv4_enabled    = true
      require_ssl     = true
    }
  }
  deletion_protection = false
}
