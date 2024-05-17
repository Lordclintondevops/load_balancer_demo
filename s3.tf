# Creating an S3 bucket to save our logs
resource "aws_s3_bucket" "demos_my_325" {
    bucket = var.bucket
    object_lock_enabled = true
  
  tags = {
    Name = "demos_my_325"
  }
}