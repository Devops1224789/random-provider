

resource "random_string" "mygen" {
length = 8
special = false
upper = false
  }


resource "aws_s3_bucket" "mys3" {
  bucket = "devops-${random_string.mygen.result}"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "upload" {
  key    = "README.md"
  bucket = aws_s3_bucket.mys3.id
  source = "README.md"
}