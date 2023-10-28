terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "adventure-tech" {
  bucket = "AdventureTech-BM-bucket"

  tags = {
    Name = "AdventureTech"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "nature-escape" {
  bucket = "NatureEscape-BM-bucket"

  tags = {
    Name = "NatureEscape"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "data-summit" {
  bucket = "DataSummitCodeCarnival-BM-bucket"

  tags = {
    Name = "DataSummitCodeCarnival"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "adventure-tech_acl" {
    bucket = aws_s3_bucket.adventure-tech.id
    acl = "private"
}

resource "aws_s3_bucket_acl" "nature_escape_acl" {
  bucket = aws_s3_bucket.nature-escape.id
  acl = "private"
}

resource "aws_s3_bucket_acl" "data-summit-acl" {
  bucket = aws_s3_bucket.data-summit.id
  acl = "private"
}