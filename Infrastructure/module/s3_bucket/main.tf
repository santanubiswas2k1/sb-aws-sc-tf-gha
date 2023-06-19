resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = var.bucket_acl

  versioning {
    enabled = var.versioning_enabled
  }

  dynamic "object_lock_configuration" {
    for_each = var.object_lock_enabled ? [1] : []
    content {
      object_lock_enabled = true
      rule {
        default_retention {
          mode                  = "COMPLIANCE"
          days                  = 30
          years                 = 5
        }
      }
    }
  }

  lifecycle_rule {
    id      = "glacier_rule"
    status  = "Enabled"

    transition {
      days          = 30
      storage_class = "GLACIER"
    }
  }
}
