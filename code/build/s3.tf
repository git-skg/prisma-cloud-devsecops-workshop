provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "06801005-c747-469d-9cf2-1e0b1806da42"
    git_commit           = "23921088adc777e24ae26643717f68b89ed32033"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-14 02:10:02"
    git_last_modified_by = "sachinkgambhirusa@gmail.com"
    git_modifiers        = "sachinkgambhirusa"
    git_org              = "git-skg"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
