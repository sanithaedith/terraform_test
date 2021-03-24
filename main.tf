terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "anitha-tel"

    workspaces {
      name = "terraform_test"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_s3_bucket" tel_test {
    bucket_prefix = "teltest-"
}

resource "aws_instance" "web" {
  instance_type = "t2.micro"
}
