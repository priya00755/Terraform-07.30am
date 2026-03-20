terraform {
  backend "s3" {
    bucket = "piya-s3-tf-bucket" 
    key    = "terraform.tfstate" #if same path already using in diff directory not a good practice to use here
    key= "day06/terraform.tfstate " # good practice to use here
    region = "us-east-1"
    use_lockfile = true
  }
}
#here we are using the same bucket but different key for different days so that we can have separate state
#if you use common s3 path for two different directories then you may distroy or modify existing resources