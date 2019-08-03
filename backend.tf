terraform {
  backend "s3" {
    bucket = "infrastructer-april-jipara"
    region = "us-east-2"
    key    = "infra.state"
  }
}
