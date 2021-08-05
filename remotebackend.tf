terraform {
  backend "s3" {
    bucket = "samaluru-test"
    key    = "key.tfstate"
    region = "us-east-2"
  }
}
