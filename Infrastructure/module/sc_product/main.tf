resource "aws_servicecatalog_product" "product" {
  name          = var.name
  owner         = var.owner
  product_type  = var.product_type
  description   = var.description

  provisioning_artifact_parameters {
    name      = var.artifact_name
    description = var.artifact_description
    info      = {
      LoadTemplateFromURL = var.template_url
    }
  }
}
