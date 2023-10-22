
#to enable compute API
# resource "google_project_service" "compute" {
#     service = "compute.googleapis.com"
#     disable_dependent_services=true
# }

 #create vpc

resource "google_compute_network" "vpc-network" {
  name = "vpc-network"
  project = "gcp-kubernetes-project-402813"
  routing_mode = "GLOBAL"
  auto_create_subnetworks = false
  # when its false we can customize our own subnets 
  # depends_on = [ 
  #   google_project_service.compute
  #  ]

}

