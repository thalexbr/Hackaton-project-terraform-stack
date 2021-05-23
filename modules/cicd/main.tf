locals {
  ws_name = terraform.workspace
}


resource "aws_codebuild_project" "example" {
  name          = "hackathon-app-stack-${local.ws_name}"
  description   = "test_codebuild_project"
  build_timeout = "60"
  service_role  = "codebuild-hackathon-app-${local.ws_name}-service-role"
  
  source {
    type = "CODEPIPELINE"
  }

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:2.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = true

    environment_variable {
      name  = "PROJECT_NAME"
      value = "hackathon-app-${local.ws_name}"
    }

    environment_variable {
      name  = "ECR_REGISTRY"
      value = var.ECR_REGISTRY
    }
  }

}