variable "project" {
  description = "The GCP project ID"
  default     = "terraproject1-485015"
}

variable "region" {
  description = "The GCP region"
  default     = "europe-west1"
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  default     = "terraproject1-bucket-485015-v1"
}

variable "dataset_id" {
  description = "The BigQuery dataset ID"
  default     = "taxi_dataset_v1"
}

variable "location" {
  description = "The location for GCS bucket and BigQuery dataset"
  default     = "EU"
}

