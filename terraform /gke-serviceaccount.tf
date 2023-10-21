resource "google_service_account" "gke-serviceaccount" {
    account_id = "service-gke"
}
resource "google_project_iam_member" "gke-logWriter" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${google_service_account.gke-serviceaccount.email}"
}

resource "google_project_iam_member" "service_account_with-gke-metricWriter" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/monitoring.metricWriter"
  member  = "serviceAccount:${google_service_account.gke-serviceaccount.email}"
}

resource "google_project_iam_member" "gke-role-viewer" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/monitoring.viewer"
  member  = "serviceAccount:${google_service_account.gke-serviceaccount.email}"
}

resource "google_project_iam_member" "gke-role-Metadata" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/stackdriver.resourceMetadata.writer"
  member  = "serviceAccount:${google_service_account.gke-serviceaccount.email}"
}

resource "google_project_iam_member" "gke-role-metricsWriter" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/autoscaling.metricsWriter"
  member  = "serviceAccount:${google_service_account.gke-serviceaccount.email}"
}

resource "google_project_iam_member" "gke-role-reader" {
  project = "nodejs-mongodb-webapplication"
  role    = "roles/artifactregistry.reader"
  member  = "serviceAccount:${google_service_account.gke-serviceaccount.email}"
}