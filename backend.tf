terraform {
  backend "s3" {
    bucket = "infrastructer-april-jipara1"
    region = "us-east-2"
    key    = "infra.state"
  }
}
