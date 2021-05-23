terraform {
  backend "s3" {
    bucket = "hackathon-fiap-6dvp-337964"
    key    = "state/hackaton-infra"
    region = "us-east-1"
  }
}