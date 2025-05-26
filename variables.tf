variable "vm_jenkins_name" {
  default = "jenkins-vm"
}

variable "vm_k8s_name" {
  default = "k8s-vm"
}

variable "memory" {
  default = 2048
}

variable "cpus" {
  default = 2
}

variable "disk_size" {
  default = "20000" # en Mo
}

variable "image" {
  default = "ubuntu/bionic64"
}
