resource "google_artifact_registry_repository" "my-repo" {
  location      = var.registery_location                        #"us-central1"
  repository_id = var.repository_id                             #"my-repository"
  description   = var.registery_description                     #"example docker repository"
  format        =  var.registery_format                         #"DOCKER"
}