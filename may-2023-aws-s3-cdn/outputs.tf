output "s3BucketId" {
  value = aws_s3_bucket.s3Bucket.id
}

output "cloudfrontDomainName" {
  value = aws_cloudfront_distribution.cdnDistribution.domain_name
}
