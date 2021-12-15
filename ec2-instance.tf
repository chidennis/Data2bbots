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
        access_key = "AKIATMYDQ3P5ZEPNQ6HR"
	      secret_key = "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"
}


resource "aws_vpc" "myvpc" {
        cidr_block = "10.0.0.0/16"
        tags = {
    Name = "vpc224"
    Envrionment = "stage"
  }
}

resource "aws_instance" "ec2" {
    ami = "ami-0b0af3577fe5e3532"
    instance_type = "t2.micro"
    tags = {
    Name = "Data2bots"
    Envrionment = "stage"
  }
}
