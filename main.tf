module "vpc_created" {
  source = "./modules/infra"  
}

module "principal" {
    source = "./modules/principal"
    depends_on = ["vpc_created"]
}