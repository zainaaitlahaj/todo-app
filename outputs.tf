output "jenkins_vm_ip" {
  value = virtualbox_vm.jenkins.network_adapter[0].ipv4_address
}

output "k8s_vm_ip" {
  value = virtualbox_vm.k8s.network_adapter[0].ipv4_address
}

