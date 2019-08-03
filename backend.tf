terraform {
  backend "s3" {
    bucket = "infrastructure-april-jipara"
    region = "us-east-2"
    key    = "infra.state"
  }
}
