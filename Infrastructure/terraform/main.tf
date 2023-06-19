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

provider "aws" {
  region = "us-west-2"  # Replace with your region
}

resource "aws_cloudformation_stack" "s3_bucket" {
  name = "s3_bucket"

  template_body = file("../cf/s3-template.json")

  template_parameter_values = {
    BucketName = jsondecode(file("../cf/s3-parameter.json"))["BucketName"]
  }
}
