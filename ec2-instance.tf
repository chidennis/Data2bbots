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
	secret_key = "KK"
}

resource "aws_instance" "ec2" {
    ami = "ami-0b0af3577fe5e3532"
    instance_type = "t2.micro"
    tags = {
    Name = "Data2bots"
    Envrionment = "stage"
  }
}
