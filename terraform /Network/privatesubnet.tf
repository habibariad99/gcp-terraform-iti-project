resource "google_compute_subnetwork" "private-subnet" {
  name          = var.private-subnet-name                  #"private-subnet"
  ip_cidr_range =  var.private_subnet_cidr_range                        #"10.2.0.0/16"
  region        = var.private_network_region                            #"us-east1"
  network       = var.vpc                     #google_compute_network.vpc-network.id
}
