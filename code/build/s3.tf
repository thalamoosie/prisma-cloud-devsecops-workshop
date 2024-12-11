provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "bfbd9ff3-d379-424c-81f9-abbcc0343c98"
    git_commit           = "8579176a592d7d8ba3551afcacefde980572ba52"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:29:43"
    git_last_modified_by = "thalamoose@protonmail.com"
    git_modifiers        = "thalamoose"
    git_org              = "thalamoosie"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
