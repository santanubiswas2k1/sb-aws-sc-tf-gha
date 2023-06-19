terraform {
  backend "s3" {
    bucket = var.AWS_BUCKET_NAME
    key    = var.AWS_BUCKET_KEY_NAME
    region = var.AWS_REGION
    # dynamodb_table = "mytable"  # Uncomment if you want to enable state locking and consistency checking
  }
}
