terraform {
  required_version = ">=0.15.0"
  backend "s3" {
    region  = "eu-west-2"
    profile = "default"
    key     = "terraformstatefile"
    bucket  = "terraformstatebucket-1462021"
  }
}