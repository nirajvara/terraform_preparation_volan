terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-new1"  # Replace with your bucket name
    key            = "terraform.tfstate"  # This is the path to the state file in the bucket
    region         = "ap-south-1"  # Replace with your region
    encrypt        = true  # Encrypt the state file at rest
    dynamodb_table = "my-dynamodb-table"  # Optional: For state locking and consistency checking
  }
}

provider "aws" {
  region = "ap-south-1"  # Replace with your preferred region
}

