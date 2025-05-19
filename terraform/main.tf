terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.87.0"
    }
  }
}

provider "yandex" {
  zone = var.zone
}

resource "yandex_compute_instance" "vm-1" {
  name = var.name

  # Конфигурация ресурсов:
  # количество процессоров и оперативной памяти
  resources {
    cores  = var.cores
    memory = var.memory
  }

  # Загрузочный диск:
  # здесь указывается образ операционной системы
  # для новой виртуальной машины
  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.disk_size
    }
  }

  # Сетевой интерфейс:
  # нужно указать идентификатор подсети, к которой будет подключена ВМ
  network_interface {
    subnet_id = var.subnet_id
    nat       = var.nat
  }

  metadata = {
    user-data = file(var.cloud_init_yaml)
  }
}

output "nat_ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}
