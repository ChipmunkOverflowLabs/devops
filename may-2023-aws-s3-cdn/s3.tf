resource "aws_s3_bucket" "s3Bucket" {
  bucket_prefix = var.bucketPrefixName
}

resource "aws_s3_bucket_public_access_block" "bucketLockdown" {
  bucket                  = aws_s3_bucket.s3Bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
