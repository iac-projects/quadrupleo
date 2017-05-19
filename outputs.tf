output "address" {
#  value = "${openstack_networking_floatingip_v2.float6.address}"
  value = "${openstack_compute_instance_v2.master1.network/fixed_ip_v4}"
}


