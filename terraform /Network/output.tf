output "vpc" {

  value = google_compute_network.vpc-network

}

output "private-subnet-name" {

  value = google_compute_subnetwork.private-subnet
}

output "public_subnet_name" {

  value = google_compute_subnetwork.public-subnet.name
  
}