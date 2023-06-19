provider "aws" {
  region = var.AWS_REGION  # Replace with your region
}

resource "aws_cloudformation_stack" "example" {
  name = "example"

  parameters = {
    Param1 = "value1"
    Param2 = "value2"
  }

  template_body = file("path/to/your/template.json")
}
