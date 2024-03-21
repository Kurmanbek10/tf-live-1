provider "google" {
  project = "proven-dryad-417822"
  region  = "us-central1"
}

resource "google_service_account" "default" {
  account_id   = "gke-service-account"
  display_name = "Service Account"
}

resource "google_container_cluster" "primary" {
  name               = "my-gke-cluster"
  location           = "us-central1"
  initial_node_count = 1

  node_config {
    disk_size_gb = 60
  }
}