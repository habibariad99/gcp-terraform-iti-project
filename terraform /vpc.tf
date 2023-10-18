
#to enable compute API
resource "google_project_service" "compute" {
    service = "compute.googleapis.com"
}

#documentation link : https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network.html
resource "google_compute_network" "myVpc" {
  name = "myVpc"
  project = "nodejs-mongodb-webapplication"
  routing_mode = "GLOBAL"
  auto_create_subnetworks = false
  # when its false we can customize our own subnets 
  depends_on = [ 
    google_project_service.compute
   ]

}

