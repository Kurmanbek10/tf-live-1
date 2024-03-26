module "gcs_bucket" {
    source = "github.com/birnazarova/tf-modules.git//storage-bucket"
    bucket_name = "aika-gke-tfstate"
    location = "US"
}