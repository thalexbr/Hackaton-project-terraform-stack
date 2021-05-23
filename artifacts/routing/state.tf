terraform {
  backend "s3" {
    bucket = "hackathon-fiap-6dvp-337964"
    key    = "state/hackaton-routing"
    region = "us-east-1"
  }
}