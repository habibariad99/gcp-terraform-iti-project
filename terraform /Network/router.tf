#router +nat = allows private subnet to access internet without public ips

resource "google_compute_router" "router" {
    name= var.router_name                          #"router"
    network = var.vpc              #google_compute_network.vpc-network.id
    region = var.private_network_region                        #"us-east1"
  }

