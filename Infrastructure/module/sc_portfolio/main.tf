resource "aws_servicecatalog_portfolio" "portfolio" {
  name         = var.name
  provider_name = var.provider_name
  description  = var.description
}
