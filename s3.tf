
resource "random_pet" "bucket_name" {
  length    = 2
  separator = "-"
}

resource "aws_s3_bucket" "unique_bucket" {
  bucket = "${lower(random_pet.bucket_name.id)}-unique-bucket"

  acl           = "private"
  force_destroy = true # Allows Terraform to destroy non-empty buckets
  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name        = "MyUniqueBucket"
    Environment = "Production"
  }
}
