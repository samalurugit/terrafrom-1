resource "aws_s3_bucket" "samaluru-bucket" {
  bucket = "samaluru-test-1"
  acl    = "private"

  tags = {
    Name        = "samaluru-bucket-1998"
    Environment = "Dev"
  }
}

