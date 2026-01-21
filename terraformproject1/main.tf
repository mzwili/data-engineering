terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.16.0"
    }
  }
}

# Configure the Google provider
provider "google" {
  project = var.project
  region  = var.region
  # Authentication is typically handled automatically via Application Default Credentials (ADC)
}
# Create a Google Cloud Storage bucket
resource "google_storage_bucket" "taxi_bucket" {
  name          = var.bucket_name
  location      = var.location
  force_destroy = true

  uniform_bucket_level_access = true


  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "taxi_dataset-v1" {
  dataset_id = var.dataset_id
  location   = var.location
}

