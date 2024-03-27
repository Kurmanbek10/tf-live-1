module "gcs_bucket" {
  source      = "github.com/Kurmanbek10/tf-modules-1.git//storage-bucket"
  bucket_name = "kurmanbek-gke-tfstate"
  location    = "US"
}