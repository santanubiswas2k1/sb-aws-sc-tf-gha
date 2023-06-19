module "service_catalog_portfolio" {
  source        = "../module/sc_portfolio"
  name          = "my_portfolio"
  provider_name = "my_provider"
  description   = "This is my portfolio"
}

