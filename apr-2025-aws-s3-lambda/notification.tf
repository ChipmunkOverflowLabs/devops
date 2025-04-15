resource "aws_s3_bucket" "triggerBucket" {
  bucket_prefix = var.bucketPrefixName
}

resource "aws_s3_bucket_notification" "bucketNotification" {
  bucket = aws_s3_bucket.triggerBucket.id

  lambda_function {
    lambda_function_arn = var.lambdaFunctionArn
    events              = ["s3:ObjectCreated:*"]
  }
}
