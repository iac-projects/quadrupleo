provider "openstack" {
    domain_name = "${var.domain_name}"
    user_name  = "${var.user_name}"
    tenant_name = "${var.tenant_name}"
    password  = "${var.password}"
    auth_url  = "${var.auth_url}"
}

resource "openstack_compute_instance_v2" "master1" {
  name            = "master1"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_volume_attach_v2" "mv_1" {
  instance_id = "${openstack_compute_instance_v2.master1.id}"
  volume_id   = "${openstack_blockstorage_volume_v2.volume1.id}"
}

resource "openstack_compute_instance_v2" "master2" {
  name            = "master2"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_instance_v2" "master3" {
  name            = "master3"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_instance_v2" "node1" {
  name            = "node1"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_volume_attach_v2" "mv_2" {
  instance_id = "${openstack_compute_instance_v2.node1.id}"
  volume_id   = "${openstack_blockstorage_volume_v2.volume2.id}"
}

resource "openstack_compute_instance_v2" "node2" {
  name            = "node2"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_volume_attach_v2" "mv_3" {
  instance_id = "${openstack_compute_instance_v2.node2.id}"
  volume_id   = "${openstack_blockstorage_volume_v2.volume3.id}"
}

resource "openstack_compute_instance_v2" "HAProxy" {
  name            = "HAProxy"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_instance_v2" "ansible" {
  name            = "ansible"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_instance_v2" "nfsshare" {
  name            = "nfsshare"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_instance_v2" "etcd1" {
  name            = "etcd1"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_instance_v2" "etcd2" {
  name            = "etcd2"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}

resource "openstack_compute_instance_v2" "etcd3" {
  name            = "etcd3"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.compute_keypair}"
  security_groups = ["${openstack_compute_secgroup_v2.openshift.name}"]
  user_data       = "${file("yum_proxy.sh")}"

  network {
    name = "${var.network_name}"
  }
}
