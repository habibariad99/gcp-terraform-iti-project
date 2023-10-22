resource "google_compute_subnetwork" "public-subnet" {
  name          = "public-subnet"
  ip_cidr_range = "10.1.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc-network.id
}
