resource "yandex_vpc_network" "network-1" {
  name        = "network-1"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet-1"
  v4_cidr_blocks = ["10.2.0.0/16"]
  zone           = var.zone
  network_id     = "${yandex_vpc_network.network-1.id}"
}