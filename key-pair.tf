resource "aws_key_pair" "key" {
  key_name   = var.keypair
  public_key = var.aws-key-pair
}