output "vm_service_account" {
  value =google_service_account.private-serviceaccount.email
}

output "gke_cluster_service_account" {
  value = google_service_account.gke_cluster_service_account.email
}