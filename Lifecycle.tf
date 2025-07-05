resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    id     = "PhotoUploadLifecycle"
    expiration {
      days = 90
    }

    filter {
        prefix = "Photos/"
    }

    status = "Enabled"

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }
}