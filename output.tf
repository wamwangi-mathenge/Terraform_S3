output "created_buckets" {
  value = aws_s3_bucket.event_theme_buckets[*].bucket
}