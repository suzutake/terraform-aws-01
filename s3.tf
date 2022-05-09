// issue #1
// manage tfstate on S3 (not local env)
resource "aws_s3_bucket" "terraform_state" {
  bucket = "S3-terraform-state"
  versioning {
    enabled = true
  }
}
