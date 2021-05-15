module "gerar_infra" {
  source = "./modules/infra"  
}

module "deploy_app" {
    source = "./modules/deploy_app"
    depends_on = ["gerar_infra"]
}