variable "cluster_name" {
  type = string
}
variable "node_name" {
  type = string 
}
variable "node_count" {
  type = number
}

variable "node_disk_size_gb" {
  type = number
}

variable "node_machine_type" {
  type = string
}
variable "node_location" {
  type = string
}

variable "cluster_location" {
  type = string
}


variable "gke_inital_cluster_node_count" {
  type = number
}

variable "vm_account_id" {
  type = string
}

variable "deletion_protection" {
  type = string
}
variable "gke_subnet" {
  type = string
}

variable "gke_master_ipv4_cidr_block" {
  type = string
}
variable "vm_name" {
  type = string
}

variable "enable_private_nodes" {
  type = string
}

variable "vm_machinetype" {
  type = string
}


variable "private-subnet-name" {
    type = string
  
}

variable "vm_zone" {
    type = string
  
}

variable "vpc" {
  type = string
}

variable "project_id" {
  type = string
}

variable "private-serviceaccount" {
  type = string
}

variable "gke_cluster_service_account" {
  type = string
}

variable "registery_location" {
  type = string
}

variable "repository_id"{
    type = string
}


variable "registery_format" {
  type = string
}

variable "registery_description" {
  type = string
}


variable "vpc_routing_mode" {
  type = string
}


variable "auto_create_subnetworks" {
  type = string
}

variable "router_name" {
  type = string
}

variable "private_network_region" {
  type = string
}

variable "public_network_region" {
  type = string
}

variable "public_network_ip_cidr_range" {
  type = string
}

variable "public_subnet_name" {
  type = string
}

variable "private_subnet_cidr_range" {
  type = string
}

variable "nat_ip_allocate_option" {
  type = string
}

variable "nat_name" {
  type = string
}

variable "firewall_name" {
  type = string
}

variable "protocol" {
  type = string
}