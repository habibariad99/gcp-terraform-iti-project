resource "google_artifact_registry_repository" "my-repo" {
  location      = "us-east1"
  repository_id = "my-repository"
  description   = "example docker repository"
  format        = "DOCKER"
}