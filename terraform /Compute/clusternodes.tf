resource "google_container_node_pool" "primayry-node" {
 name       = var.node_name                               #"my-primary-node"
 location   =  var.node_location   
 node_locations =  var.node_pool_locations                  #"us-central1"
 node_count = var.node_count                              #1

 cluster    =  var.cluster_name                     #google_container_cluster.gke-cluster.name

 node_config {
    machine_type = var.node_machine_type                                       #"e2-micro"
    disk_size_gb = var.node_disk_size_gb
    service_account = var.gke_cluster_service_account
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
  
}

