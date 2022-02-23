resource "aws_s3_bucket" "dc_bucket" {
  bucket = "dc-is-better-than-marvel"
  acl = "public-read-write"
}