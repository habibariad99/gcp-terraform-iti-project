resource "google_compute_firewall" "allow-ssh" {
  name= var.firewall_name                                  #"allow-ssh"
  network = var.vpc                      #google_compute_network.vpc-network.name

  allow {
    protocol = var.protocol                                       #"tcp"
    ports = ["22"]
  }
  source_ranges = ["35.235.240.0/20"]
}