
variable "vpc" {
  type = string
}

variable "project_name" {
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

variable "private-subnet-name" { 
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