resource "google_compute_router_nat" "nat" {
name = "nat"
router = google_compute_router.router.name
source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
 #How external IPs should be allocated for this NAT
 #for only allowing NAT IPs allocated by Google Cloud Platform
nat_ip_allocate_option = "AUTO_ONLY"
region = google_compute_router.router.region

subnetwork {
  name= google_compute_subnetwork.private-subnet.id
  source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
}

}