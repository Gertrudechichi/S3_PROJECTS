resource "aws_s3_bucket" "mybucket" {
  bucket = "chichi001bucket"
}

resource "aws_s3_bucket_website_configuration" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}

resource "aws_s3_bucket_policy" "allow_access_from_the_internet" {
  bucket = aws_s3_bucket.mybucket.id
  policy = data.aws_iam_policy_document.allow_access_from_the_internet.json
}

data "aws_iam_policy_document" "allow_access_from_the_internet" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      aws_s3_bucket.mybucket.arn,
      "${aws_s3_bucket.mybucket.arn}/*",
    ]
  }
}

resource "aws_s3_bucket_public_access_block" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

