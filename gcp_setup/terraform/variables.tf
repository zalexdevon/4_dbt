variable "credentials" {
  description = "My Credentials"
  default     = "D:/DE/learn-data-engineering-zoomcamp/4-dbt/gcp_setup/gcp_credentials/creds.json" # should be absolute path
}


variable "project" {
  description = "Project"
  default     = "dbt-468213"
}

variable "region" {
  description = "Region"
  default     = "us-central1"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "4_dbt_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "dbt-468213-storage" # must be globally unique
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
