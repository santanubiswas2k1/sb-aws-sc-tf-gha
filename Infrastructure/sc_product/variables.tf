variable "product_name" {
  description = "The name of the product"
  type        = string
}

variable "product_owner" {
  description = "The owner of the product"
  type        = string
}

variable "product_description" {
  description = "The description of the product"
  type        = string
}

variable "artifact_name" {
  description = "The name of the artifact"
  type        = string
}

variable "artifact_description" {
  description = "The description of the artifact"
  type        = string
}

variable "AWS_BUCKET_NAME" {
  description = "The URL of the template"
  type        = string
  default = "sb-ss-tfstate"
}

variable "AWS_BUCKET_KEY_NAME" {
  description = "The URL of the template"
  type        = string
  default = "product-portfolio"
}

variable "AWS_REGION" {
  description = "The URL of the template"
  type        = string
  default = "eu-west-2"
}

variable "template_url" {
  description = "The URL of the template"
  type        = string
}
