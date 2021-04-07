
resource "aws_s3_bucket" "artifacts" {
  bucket = "terraform-cicd-codepipeline-artifacts-123456"
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "source" {
  bucket = "terraform-cicd-codepipeline-source-123456"
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "source" {
  bucket = aws_s3_bucket.source.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}