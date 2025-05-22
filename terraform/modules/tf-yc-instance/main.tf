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
