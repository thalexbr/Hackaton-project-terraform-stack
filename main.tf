module "gerar_infra" {
  source = "./modules/infra"  
}

module "gerar_app" {
    source = "./modules/gerar_app"
    depends_on = ["gerar_infra"]
}