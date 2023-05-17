provider "aws" {
  profile="demo-profile"
  region = "ca-central-1"
}

module "ping_google" {
  source = "git::https://github.com/Liquid-Blocks/terraform_python_lambda_function_module.git"
  function_name = "ping_google"
}