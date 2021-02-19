terraform {
	required_version = ">= 0.12"
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "foobar" {
	ami = "ami-047a51fa27710816e"
	instance_type = "t1.micro"
}

