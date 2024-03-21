provider "google" {
  project     = "high-theme-384006"
  region      = "us-central1"
  credentials = "high-theme-384006-9c0dafef862c.json"
}

resource "google_service_account" "github" {
  account_id = "gha-sa"
}

# resource "google_project_iam_member" "github_token_creator" {
#   project = "high-theme-384006"
#   role    = "roles/iam.serviceAccountTokenCreator"
#   member  = "serviceAccount:${google_service_account.github.email}"
# }

# resource "google_project_iam_member" "github_act_as" {
#   project = "high-theme-384006"
#   role    = "roles/artifactregistry.writer"
#   member  = "serviceAccount:${google_service_account.github.email}"
# }

resource "google_artifact_registry_repository" "hello-app-docker" {
  location      = "us-central1"
  repository_id = "hello-app-docker"
  format        = "DOCKER"
  project       = "high-theme-384006"
}

resource "google_artifact_registry_repository" "hello-app-chart" {
  location      = "us-central1"
  repository_id = "hello-app-chart"
  format        = "DOCKER"
  project       = "high-theme-384006"
}