terraform {
required_providers {
aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-2"
}

 resource "aws_s3_bucket" "my_bucket" {
  bucket = "ashwiniterraformec2new12"  

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}

resource "aws_instance" "app_server" {
  ami           = "ami-09e143e99e8fa74f9"
  instance_type = "t2.micro"

  tags = {
    Name = "ashwini"
  }
}
