terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
        region = "us-west-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-054965c6cd7c6e462"
    instance_type = "t2.micro"
    tags = {
    Name = "Ubaha-project"
    Envrionment = "production"
  }
}
