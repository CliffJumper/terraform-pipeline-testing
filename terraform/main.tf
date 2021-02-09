terraform {
  required_version = "=0.13.6"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "foo" {
  namee  = "/manheim/terraform-provider/testing"
  type  = "String"
  value = "bar"
}