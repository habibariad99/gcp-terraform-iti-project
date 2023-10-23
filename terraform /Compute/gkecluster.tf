 
resource "google_container_cluster" "gke-cluster" { 
  name     = var.cluster_name                                        #"gke-cluster"
  location = var.cluster_location                                                  #"us-central1"
 
  #will create 1 node in each zone 
  initial_node_count = var.gke_inital_cluster_node_count
  deletion_protection= var.deletion_protection
  
  network    = var.vpc                                          #google_compute_network.vpc-network.name
  subnetwork = var.gke_subnet                                       #google_compute_subnetwork.public-subnet.name
  remove_default_node_pool = false
  #to make the cluster private
  private_cluster_config {
    #enable_private_endpoint = true
    enable_private_nodes    = var.enable_private_nodes
    master_ipv4_cidr_block =  var.gke_master_ipv4_cidr_block                    #"172.16.0.0/28"
  }

}


  


 