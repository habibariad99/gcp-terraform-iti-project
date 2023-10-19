resource "google_compute_subnetwork" "private-subnet" {
  name          = "private-subnet"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc-network.id
  # secondary_ip_range {
  #   range_name    = "private-subnet-secondary-range"
  #   ip_cidr_range = "192.168.10.0/24"
  # }
}
