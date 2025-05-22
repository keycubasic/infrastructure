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

variable "cloud_init_yaml" {
  type    = string
  default = "cloud-init-add-user.yaml"
}

variable "subnet_id" {
  type    = string
}

variable "nat" {
  type    = bool
  default = true
}
