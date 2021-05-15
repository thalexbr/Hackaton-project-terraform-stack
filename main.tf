module "vpc_create" {
  source = "./modules/infra"  
}

module "principal" {
    source = "./modules/principal"
    depends_on = ["vpc_create"]
}