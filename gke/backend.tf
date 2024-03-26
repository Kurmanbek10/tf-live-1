terraform {
  backend "gcs" {
    bucket = "aika-gke-tfstate"
    prefix = "tfstate"
  }
}
