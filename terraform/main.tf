terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.87.0"
    }
  }
}

provider "yandex" {
  zone = "ru-central1-a"
}

resource "yandex_compute_instance" "vm-1" {
  name = "std-040-05-practice-tf"

  # Конфигурация ресурсов:
  # количество процессоров и оперативной памяти
  resources {
    cores  = 4
    memory = 4
  }

  # Загрузочный диск:
  # здесь указывается образ операционной системы
  # для новой виртуальной машины
  boot_disk {
    initialize_params {
      image_id = "fd80qm01ah03dkqb14lc"
    }
  }

  # Сетевой интерфейс:
  # нужно указать идентификатор подсети, к которой будет подключена ВМ
  network_interface {
    subnet_id = "e9behps33a0dus6o9lmq"
    nat       = true
  }

  metadata = {
    user-data = file("cloud-init-add-user.yaml")
  }
}

output "nat_ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}
