locals {
  bucket_policy = file(var.bucket_policy_file)
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = var.bucket_name
  policy = local.bucket_policy
}

output "bucket_policy_arn" {
  description = "The ARN of the bucket policy"
  value       = aws_s3_bucket_policy.bucket_policy.arn
}
