terraform {
  backend "s3" {
      bucket = "terraform-state-bucket-01"
      key = "finance/terrform.tfstate"
      region = "us-west-1"
      dynamodb_table = "state-locking"
  }
}