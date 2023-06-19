# provider "aws" {
#   region = "us-west-2"  # Replace with your region
# }

# resource "aws_cloudformation_stack" "s3_bucket" {
#   name = "s3_bucket"

#   parameters = {
#     BucketName = "your_bucket_name"
#   }

#   template_body = file("../cf/s3-template.json")
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = var.AWS_BUCKET_NAME
    key    = var.AWS_BUCKET_KEY_NAME
    region = var.AWS_REGION
  }
}
provider "aws" {
  region = "eu-west-2"  # Replace with your region
}

# locals {
#   parameters = jsondecode(file("../cf/s3-parameters.json"))
# }

resource "aws_cloudformation_stack" "s3_bucket" {
  name = "s3bucketsb"
  parameters = local.parameters
  # parameters = {
  #   BucketName = local.parameters.BucketName
  # }

  template_body = file("../cf/s3-template.json")
}

locals {
  parameters = {
    BucketName = "sbs31243"
  }
}