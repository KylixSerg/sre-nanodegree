terraform {
   backend "s3" {
     bucket = "nanodegree-c1-ami"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
     access_key = ""
     secret_key = ""
   }
 }

 provider "aws" {
   region = "us-east-1"
   access_key = ""
   secret_key = ""

   default_tags {
     tags = local.tags
   }
 }