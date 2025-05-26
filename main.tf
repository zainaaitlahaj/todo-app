provider "virtualbox" {
  # plugin externe, on ajoutera l'installation après
}

resource "virtualbox_vm" "jenkins" {
  name   = var.vm_jenkins_name
  image  = var.image
  cpus   = var.cpus
  memory = var.memory

  network_adapter {
    type           = "hostonly"
    host_interface = "VirtualBox Host-Only Ethernet Adapter"
  }

  storage {
    disk_size = var.disk_size
  }
}

resource "virtualbox_vm" "k8s" {
  name   = var.vm_k8s_name
  image  = var.image
  cpus   = var.cpus
  memory = var.memory

  network_adapter {
    type           = "hostonly"
    host_interface = "VirtualBox Host-Only Ethernet Adapter"
  }

  storage {
    disk_size = var.disk_size
  }
}

