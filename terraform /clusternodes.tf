resource "google_container_node_pool" "primary_node" {
 name       = "my-primary-node"
 location   = "us-central1"
 node_count = 1
 cluster    = google_container_cluster.gke-cluster.name

 node_config {
    machine_type = "e2-micro"
    service_account = google_service_account.gke-serviceaccount.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
  
}
