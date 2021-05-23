module "app" {
    source = "../../modules/app"
    aws_region = var.aws_region
    project = "fiap-lab"
    ECR_REGISTRY = var.ECR_REGISTRY
    
}