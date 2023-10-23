resource "google_service_account" "private-serviceaccount" {
    account_id = var.project_id                            #"service-vm"
}

#grant access 
resource "google_project_iam_member" "gke-role" {
  project = var.project_id
  role    = "roles/container.clusterViewer"
  member  = "serviceAccount:${google_service_account.private-serviceaccount.email}"
  #"serviceAccount:${google_service_account.private-serviceaccount.email}"
}

resource "google_project_iam_member" "admin-role" {
  project = var.project_id
  role    = "roles/container.clusterAdmin"
  member  = "serviceAccount:${google_service_account.private-serviceaccount.email}"
}

resource "google_project_iam_member" "artifact-role" {
  project = var.project_id
  role    = "roles/artifactregistry.repoAdmin"
  member  = "serviceAccount:${google_service_account.private-serviceaccount.email}"
}

resource "google_project_iam_member" "vm-containerAdmin" {
  project = var.project_id
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.private-serviceaccount.email}"
}

resource "google_project_iam_member" "service_account_with-token-role" {
  project = var.project_id
  role    = "roles/iam.serviceAccountTokenCreator"
  member  = "serviceAccount:${google_service_account.private-serviceaccount.email}"
}