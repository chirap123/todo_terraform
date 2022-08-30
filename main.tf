terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAVHEAXJ32GN746Z5I"
  secret_key = "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"
}


resource "aws_db_instance" "todo_rds_instance" {
  allocated_storage   = 20
  identifier          = "rds-terraform"
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "8.0.27"
  instance_class      = "db.t2.micro"
  name                = "todo_db"
  username            = "todo"
  password            = "todo12345"
  publicly_accessible = true
  skip_final_snapshot = true


  tags = {
    Name = "ExampleRDSServerInstance"
  }
}