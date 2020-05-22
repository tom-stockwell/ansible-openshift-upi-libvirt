variable "node_type" {
  type    = string
}

variable "fqdn" {
  type    = string
}


variable "names" {
  type    = list(string)
}

variable "macs" {
  type    = list(string)
}

variable "network_name" {
  type    = string
  default = "default"
}

variable "storage_pool" {
  type    = string
  default = "default"
}

variable "image_source" {
  type    = string
}

variable "memory" {
  type    = number
  default = 16384
}

variable "vcpu" {
  type    = number
  default = 4
}

variable "storage" {
  type    = number
  default = 128849018880
}
