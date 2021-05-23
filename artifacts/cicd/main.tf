module "cicd" {
    source = "../../modules/cicd"
    aws_region = var.aws_region
    ECR_REGISTRY = var.ECR_REGISTRY
    
}