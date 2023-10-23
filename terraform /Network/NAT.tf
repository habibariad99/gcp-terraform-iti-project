resource "google_compute_router_nat" "nat" {
name = var.nat_name                                                        #"nat"
router = var.router_name                                  #google_compute_router.router.name
source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
 #How external IPs should be allocated for this NAT
 #for only allowing NAT IPs allocated by Google Cloud Platform
nat_ip_allocate_option =  var.nat_ip_allocate_option                                          #"AUTO_ONLY"
region =  var.private_network_region                                                      #google_compute_router.router.region

subnetwork {
  name= var.private-subnet-name                    #google_compute_subnetwork.private-subnet.id
  source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
}

}