resource "aws_cloudfront_origin_access_identity" "originAccessIdentity" {
  comment = "OAI for CDN access"
}

resource "aws_cloudfront_distribution" "cdnDistribution" {
  origin {
    domain_name = aws_s3_bucket.s3Bucket.bucket_regional_domain_name
    origin_id   = "s3Origin"

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.originAccessIdentity.cloudfront_access_identity_path
    }
  }

  enabled             = true
  default_root_object = "index.html"

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "s3Origin"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = var.enableViewerHttps ? "redirect-to-https" : "allow-all"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
