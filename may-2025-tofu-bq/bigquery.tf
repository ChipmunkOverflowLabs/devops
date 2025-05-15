resource "google_bigquery_dataset" "bqDataset" {
  dataset_id                  = var.datasetIdVal
  friendly_name               = "Telemetry Dataset"
  description                 = "BigQuery dataset for telemetry logs"
  location                    = var.datasetLocationName
  default_table_expiration_ms = 3600000
}
