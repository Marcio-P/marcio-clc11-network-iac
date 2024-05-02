terraform {
  backend "s3" {
    bucket = "marcio-clc11-tfstate-impacta11"
    key    = "tfstate/network-clc11.tfstate"
    region = "us-east-1"
  }
}
