variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "bucket_acl" {
  description = "The access control list (ACL) of the bucket"
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "Specifies whether versioning is enabled for the bucket"
  type        = bool
  default     = true
}

variable "object_lock_enabled" {
  description = "Specifies whether object locking is enabled for the bucket"
  type        = bool
  default     = false
}

variable "bucket_policy" {
  description = "The JSON bucket policy for the bucket"
  type        = string
  default     = ""
}
