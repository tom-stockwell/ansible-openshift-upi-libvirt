provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_volume" "vol" {
  count = length(var.names)
  name  = "${var.names[count.index]}.${var.fqdn}.qcow2"
  pool = var.storage_pool
  source = var.image_source
  format = "qcow2"
}

resource "libvirt_ignition" "ignition" {
  name = "${var.node_type}.${var.fqdn}.ign"
  content = "${path.root}/../${var.node_type}.ign"
  pool = var.storage_pool
}

resource "libvirt_domain" "node" {
  count = length(var.names)
  name   = "${var.names[count.index]}.${var.fqdn}"
  memory = var.memory
  vcpu   = var.vcpu

  network_interface {
    network_name = var.network_name
    mac = var.macs[count.index]
  }

  disk {
    volume_id = libvirt_volume.vol[count.index].id
  }

  coreos_ignition = libvirt_ignition.ignition.id

  console {
    type = "pty"
    target_type = "serial"
    target_port = "0"
  }
}
