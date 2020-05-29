module "masters" {
  source       = "./modules/node"

  node_type    = "master"
  fqdn         = var.fqdn
  names        = var.master_names
  macs         = var.master_macs
  network_name = var.network_name
  storage_pool = var.storage_pool
  image_source = var.rhcos_url
  memory       = var.master_memory
  vcpu         = var.master_vcpu
  storage      = var.master_storage
}

module "workers" {
  source       = "./modules/node"

  node_type    = "worker"
  fqdn         = var.fqdn
  names        = var.worker_names
  macs         = var.worker_macs
  network_name = var.network_name
  storage_pool = var.storage_pool
  image_source = var.rhcos_url
  memory       = var.worker_memory
  vcpu         = var.worker_vcpu
  storage      = var.worker_storage
}

module "bootstraps" {
  source       = "./modules/node"

  node_type    = "bootstrap"
  fqdn         = var.fqdn
  names        = var.bootstrap_names
  macs         = var.bootstrap_macs
  network_name = var.network_name
  storage_pool = var.storage_pool
  image_source = var.rhcos_url
  memory       = var.bootstrap_memory
  vcpu         = var.bootstrap_vcpu
  storage      = var.bootstrap_storage
}

module "loadbalancers" {
  source      = "./modules/node"

  node_type    = "loadbalancer"
  fqdn         = var.fqdn
  names        = var.loadbalancer_names
  macs         = var.loadbalancer_macs
  network_name = var.network_name
  storage_pool = var.storage_pool
  image_source = var.fcos_url
  memory       = var.loadbalancer_memory
  vcpu         = var.loadbalancer_vcpu
  storage      = var.loadbalancer_storage
}