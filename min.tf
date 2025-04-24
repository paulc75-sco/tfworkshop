terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}
provider "aws" {
  region = var.region
}
resource "aws_instance" "app_server" {
  ami           = "ami-0b76100074ce446d4"
  instance_type = "t2.micro"
  tags = {
    Name = "Demo"
  }
}
