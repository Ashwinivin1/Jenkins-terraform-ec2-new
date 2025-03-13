terraform {
  backend "s3" {
    bucket         = "ashwiniterraformec2new12"
    key            = "terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
  }
}
