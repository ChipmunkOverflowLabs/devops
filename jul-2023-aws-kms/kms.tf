resource "aws_kms_key" "appEncryptionKey" {
  description             = "Production applications cryptokey"
  deletion_window_in_days = var.deletionWindowInDays
  enable_key_rotation     = true
}

resource "aws_kms_alias" "appKeyAlias" {
  name          = var.keyAliasName
  target_key_id = aws_kms_key.appEncryptionKey.key_id
}
