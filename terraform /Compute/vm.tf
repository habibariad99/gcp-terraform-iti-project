resource "google_compute_instance" "private-vm" {
   name         =  var.vm_name                                        #"my-private-vm"
   machine_type =  var.vm_machinetype                                 #"e2-micro"
   zone         =  var.vm_zone                                        #"us-east1-b"
   boot_disk {

   initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "private-vm"
      }
    }
  }
  network_interface {
    network = var.vpc
    subnetwork = var.private-subnet-name             # google_compute_subnetwork.private-subnet.id
  }
  service_account {
    email  = var.private-serviceaccount                    #google_service_account.private-serviceaccount.email
    scopes = ["cloud-platform"]
  }
  
}