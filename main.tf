provider "aws" {
  profile="demo-profile"
  region = "ca-central-1"
}

module "ping_google" {
  source = "./modules/lambda_python"
  function_name = "ping_google"
}