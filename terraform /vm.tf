resource "google_compute_instance" "private-vm" {
   name         = "my-private-vm"
   machine_type = "e2-micro"
   zone         = "us-central1-a"
   boot_disk {
    
   initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "private-vm"
      }
    }
  }
  network_interface {
    network = google_compute_network.vpc-network.id
    subnetwork = google_compute_subnetwork.private-subnet.id
  }
  service_account {
    email  = google_service_account.private-serviceaccount.email
    scopes = ["cloud-platform"]
  }
  
}