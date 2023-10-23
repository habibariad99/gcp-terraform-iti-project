module "Network" {

  source = "./Network"
  vpc =  var.vpc
  project_name = var.project_id
  vpc_routing_mode = var.vpc_routing_mode
  auto_create_subnetworks= var.auto_create_subnetworks
  router_name = var.router_name
  private_network_region = var.private_network_region
  public_network_region = var.public_network_region
  public_network_ip_cidr_range = var.public_network_ip_cidr_range
  public_subnet_name = var.public_subnet_name
  private-subnet-name = var.private-subnet-name
  private_subnet_cidr_range = var.private_subnet_cidr_range
  nat_ip_allocate_option = var.nat_ip_allocate_option
  nat_name = var.nat_name
  firewall_name=var.firewall_name
  protocol = var.protocol
  
}

module "Storage" {

  source = "./Storage"
  registery_location = var.registery_location
  repository_id = var.repository_id
  registery_format=var.registery_format
  registery_description = var.registery_description

}

module "IAM" {
 
  source = "./IAM"
  project_id = var.project_id
  vm_service_account= var.vm_service_account
  gke_cluster_service_account = var.gke_cluster_service_account
}

module "Compute" {
  
  source = "./Compute"
  cluster_name = var.cluster_name
  vpc= module.Network.vpc.name
  node_name = var.node_name
  node_count = var.node_count
  node_disk_size_gb = var.node_disk_size_gb
  node_machine_type = var.node_machine_type
  node_location = var.node_location
  cluster_location = var.cluster_location
  gke_inital_cluster_node_count = var.gke_inital_cluster_node_count
  deletion_protection= var.deletion_protection
  gke_subnet = module.Network.public_subnet_name
  gke_cluster_service_account= module.IAM.gke_cluster_service_account
  vm_service_account = module.IAM.vm_service_account
  gke_master_ipv4_cidr_block = var.gke_master_ipv4_cidr_block
  vm_name = var.vm_name
  enable_private_nodes = var.enable_private_nodes
  vm_machinetype= var.vm_machinetype
  vm_zone = var.vm_zone
  private-subnet-name = module.Network.private-subnet-name.name

}

