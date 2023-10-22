 
resource "google_container_cluster" "gke-cluster" { 
  name     = "gke-cluster"
  location = "us-central1"
 
  #will create 1 node in each zone 
  initial_node_count = 1
  deletion_protection= false
  
  network    = google_compute_network.vpc-network.name
  subnetwork = google_compute_subnetwork.public-subnet.name
  remove_default_node_pool = false
  #to make the cluster private
  private_cluster_config {
    #enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block = "172.16.0.0/28"
  }

}


  


 