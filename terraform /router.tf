#router +nat = allows private subnet to access internet without public ips

resource "google_compute_router" "router" {
    name="router"
    network = google_compute_network.vpc-network.id
    region = "us-central1-a"
  }

