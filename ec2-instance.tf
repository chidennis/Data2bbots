terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
        region = "us-east-1"
        access_key = "KK"
	secret_key = "KK/kk"
}

resource "aws_instance" "ec2" {
    ami = "ami-0bhg860485402"
    instance_type = "t2.micro"
    tags = {
    Name = "Data2bots"
    Envrionment = "stage"
  }
}
