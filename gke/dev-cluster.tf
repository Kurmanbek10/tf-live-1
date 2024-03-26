module "dev-gke_cluster" {
  source                       = "git@github.com:birnazarova/tf-modules.git//gke"
  service_account_id           = "dev-gke-service-account"
  service_account_display_name = "DEV GKE Service Account"
  cluster_name                 = "dev-cluster"
  cluster_location             = "us-central1-a"
  project_id                   = "proven-dryad-417822"
}