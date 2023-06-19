module "service_catalog_product" {
  source               = "../module/sc_product"
  name                 = var.product_name
  owner                = var.product_owner
  description          = var.product_description
  artifact_name        = var.artifact_name
  artifact_description = var.artifact_description
  template_url         = var.template_url
}

