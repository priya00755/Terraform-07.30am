provider "aws" {
  region = "us-west-2"
  profile = "default"
#default region is us-east-1 but we can specify the region here if we want use a different region
#here dev = default profile in provider.tf 
}
#calling keys from my local machine dev profile credentials
##dev environment provider block##
provider "aws" {
region = "us-west-2"
  alias = "testenv" #if multiple providers are used then we have to give alias to the provider 
  profile = "dev"
}
  

# calling keys from my local machine dev profile credentials
provider "aws" {
  region = "us-west-2"
  alias = "prodenv" 
  profile = "prod"
  
}
