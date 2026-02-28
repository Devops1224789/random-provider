output "display" {
value = random_string.mygen
}

output "s3dname" {
  value = aws_s3_bucket.mys3.bucket
}