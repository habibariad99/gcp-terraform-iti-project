resource "google_service_account" "private-serviceaccount" {
    account_id = "service-vm"
}

#grant access 
resource "google_project_iam_member" "gke-role" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/container.clusterViewer"
  member  = "serviceAccount:${google_service_account.private-serviceaccount.email}"
}

resource "google_project_iam_member" "admin-role" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/container.clusterAdmin"
  member  = "serviceAccount:${google_service_account.private-serviceaccount.email}"
}

resource "google_project_iam_member" "artifact-role" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/artifactregistry.repoAdmin"
  member  = "serviceAccount:${google_service_account.private-serviceaccount.email}"
}