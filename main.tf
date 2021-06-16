provider "aws" {
  profile = var.profile
  region  = var.region-master
  alias   = "region-master"

}

provider "aws" {
  profile = var.profile
  region  = var.region-worker
  alias   = "region-worker"

}

terraform {
  required_version = ">=0.15.0"
  backend "s3" {
    region  = "eu-west-2"
    profile = "default"
    key     = "terraformstatefile"
    bucket  = "terraformstatebucket-1462021"
  }
}