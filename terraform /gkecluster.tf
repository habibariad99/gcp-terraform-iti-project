 
resource "google_container_cluster" "gke-cluster" { 
  name     = "gke-cluster"
  location = "us-east1"
  #will create 1 node in each zone 
  initial_node_count = 1
  network    = google_compute_network.vpc-network.name
  subnetwork = google_compute_subnetwork.public-subnet.name
  remove_default_node_pool = true
  #to make the cluster private
  private_cluster_config {
    #enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block = "172.16.0.0/28"
  }
  #who's able to authorize my private network ? 
#   master_authorized_networks_config {
#     cidr_blocks {

#       display_name = "My Management Subnet"
#       cidr_block   = module.network-mod.management_subnet_cidr
      
#     }

#   }
}


  


 