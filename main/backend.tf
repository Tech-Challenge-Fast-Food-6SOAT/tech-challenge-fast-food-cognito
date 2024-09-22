terraform {
  backend "gcs" {
    bucket = "lanchonete-terraform-backend"
    prefix = "cognito/terraform.tfstate"
  }
}
