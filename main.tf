terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "todo" {
  ami           = var.ami
  instance_type = var.instance_type

  credit_specification {
    cpu_credits = "unlimited"
  }
}
