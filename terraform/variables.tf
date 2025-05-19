variable "zone" {
  type    = string
  default = "ru-central1-a"
}

variable "name" {
  type    = string
  default = "std-040-05-practice-tf"
}

variable "cores" {
  type    = number
  default = 4
}

variable "memory" {
  type    = number
  default = 4
}

variable "image_id" {
  type    = string
  default = "fd80qm01ah03dkqb14lc"
}

variable "disk_size" {
  type    = number
  default = 50
}

variable "subnet_id" {
  type    = string
  default = "e9behps33a0dus6o9lmq"
}

variable "nat" {
  type    = bool
  default = true
}

variable "cloud_init_yaml" {
  type    = string
  default = "cloud-init-add-user.yaml"
}
