
#to enable compute API
resource "google_project_service" "compute" {
    service = "compute.googleapis.com"
}

 #create vpc

resource "google_compute_network" "vpc-network" {
  name = "vpc-network"
  project = "nodejs-mongodb-webapplication"
  routing_mode = "GLOBAL"
  auto_create_subnetworks = false
  # when its false we can customize our own subnets 
  depends_on = [ 
    google_project_service.compute
   ]

}

