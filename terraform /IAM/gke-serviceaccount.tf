resource "google_service_account" "gke_cluster_service_account" {
    account_id = "service-gke"
}
resource "google_project_iam_member" "gke-logWriter" {
  project = "gcp-kubernetes-project-402813"
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${google_service_account.gke_cluster_service_account.email}"
}

resource "google_project_iam_member" "service_account_with-gke-metricWriter" {
  project = "gcp-kubernetes-project-402813"
  role    = "roles/monitoring.metricWriter"
  member  = "serviceAccount:${google_service_account.gke_cluster_service_account.email}"
}

resource "google_project_iam_member" "gke-role-viewer" {
  project = "gcp-kubernetes-project-402813"
  role    = "roles/monitoring.viewer"
  member  = "serviceAccount:${google_service_account.gke_cluster_service_account.email}"
}

resource "google_project_iam_member" "gke-role-Metadata" {
  project = "gcp-kubernetes-project-402813"
  role    = "roles/stackdriver.resourceMetadata.writer"
  member  = "serviceAccount:${google_service_account.gke_cluster_service_account.email}"
}

resource "google_project_iam_member" "gke-role-metricsWriter" {
  project = "gcp-kubernetes-project-402813"
  role    = "roles/autoscaling.metricsWriter"
  member  = "serviceAccount:${google_service_account.gke_cluster_service_account.email}"
}

resource "google_project_iam_member" "gke-role-reader" {
  project = "gcp-kubernetes-project-402813"
  role    = "roles/artifactregistry.reader"
  member  = "serviceAccount:${google_service_account.gke_cluster_service_account.email}"
}