variable "network_name" {
  type    = string
  default = "default"
}

variable "storage_pool" {
  type    = string
  default = "default"
}

variable "rhcos_url" {
  type    = string
}

variable "fedora_url" {
  type    = string
}

variable "fqdn" {
  type    = string
}

variable "master_names" {
  type    = list(string)
  default = []
}

variable "master_macs" {
  type    = list(string)
  default = []
}

variable "master_memory" {
  type    = number
  default = 16384
}

variable "master_vcpu" {
  type    = number
  default = 4
}

variable "master_storage" {
  type    = number
  default = 128849018880
}

variable "worker_names" {
  type    = list(string)
  default = []
}

variable "worker_macs" {
  type    = list(string)
  default = []
}

variable "worker_memory" {
  type    = number
  default = 8192
}

variable "worker_vcpu" {
  type    = number
  default = 2
}

variable "worker_storage" {
  type    = number
  default = 128849018880
}

variable "bootstrap_names" {
  type    = list(string)
  default = []
}

variable "bootstrap_macs" {
  type    = list(string)
  default = []
}

variable "bootstrap_memory" {
  type    = number
  default = 16384
}

variable "bootstrap_vcpu" {
  type    = number
  default = 4
}

variable "bootstrap_storage" {
  type    = number
  default = 128849018880
}

variable "loadbalancer_names" {
  type    = list(string)
  default = []
}

variable "loadbalancer_macs" {
  type    = list(string)
  default = []
}

variable "loadbalancer_memory" {
  type    = number
  default = 16384
}

variable "loadbalancer_vcpu" {
  type    = number
  default = 2
}

variable "loadbalancer_storage" {
  type    = number
  default = 41943040
}