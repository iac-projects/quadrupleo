resource "openstack_blockstorage_volume_v2" "volume1" {
  region      = "RegionOne"
  name        = "master1"
  description = "master1 docker storage volume"
  size        = 10
}

resource "openstack_blockstorage_volume_v2" "volume2" {
  region      = "RegionOne"
  name        = "node1"
  description = "node1 docker storage volume"
  size        = 10
}

resource "openstack_blockstorage_volume_v2" "volume3" {
  region      = "RegionOne"
  name        = "node2"
  description = "node2 docker storage volume"
  size        = 10
}
