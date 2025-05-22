module "tf_network" {
  source = "./modules/tf-yc-network"
  zone   = var.zone
}
module "tf_instance" {
  source     = "./modules/tf-yc-instance"
  subnet_id  = module.tf_network.out_subnet_id
  depends_on = [module.tf_network]
}
