resource "google_compute_subnetwork" "public-subnet" {
  name          =  var.public_subnet_name                                       #"public-subnet"
  ip_cidr_range =  var.public_network_ip_cidr_range                            #"10.1.0.0/16"
  region        = var.public_network_region                                    #"us-central1"
  network       = var.vpc                    #google_compute_network.vpc-network.id
}
