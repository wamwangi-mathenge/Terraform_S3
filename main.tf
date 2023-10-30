terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "event_theme_buckets" {
  count = length(var.event_themes)
  bucket = "${var.event_themes[count.index]}-brian-mathenge-bucket"
  acl = "private"
}

# resource "aws_s3_bucket_acl" "adventure-tech_acl" {
#     bucket = aws_s3_bucket.adventure-tech.id
#     acl = "private"
# }

# resource "aws_s3_bucket_acl" "nature_escape_acl" {
#   bucket = aws_s3_bucket.nature-escape.id
#   acl = "private"
# }

# resource "aws_s3_bucket_acl" "data-summit-acl" {
#   bucket = aws_s3_bucket.data-summit.id
#   acl = "private"
# }