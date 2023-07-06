terraform {
  backend "gcs" {
    bucket         = "onramp-sample-bucket"
    prefix         = "terraform/state"
  }
}
