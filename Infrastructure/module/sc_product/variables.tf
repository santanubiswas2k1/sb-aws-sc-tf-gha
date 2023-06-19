variable "name" {
  description = "Name of the Service Catalog Product"
  type        = string
}

variable "owner" {
  description = "Owner of the Service Catalog Product"
  type        = string
}

variable "product_type" {
  description = "Type of the Service Catalog Product"
  type        = string
  default     = "CLOUD_FORMATION_TEMPLATE"
}

variable "description" {
  description = "Description of the Service Catalog Product"
  type        = string
}

variable "artifact_name" {
  description = "Name of the Provisioning Artifact"
  type        = string
}

variable "artifact_description" {
  description = "Description of the Provisioning Artifact"
  type        = string
}

variable "template_url" {
  description = "URL of the template for the Provisioning Artifact"
  type        = string
}
