output "kmsKeyId" {
  value = aws_kms_key.appEncryptionKey.key_id
}

output "kmsKeyArn" {
  value = aws_kms_key.appEncryptionKey.arn
}
