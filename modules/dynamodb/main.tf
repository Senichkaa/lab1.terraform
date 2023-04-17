resource "aws_dynamodb_table" "db" {
  name         = var.name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"


  attribute {
    name = "id"
    type = "S"
  }
}

module "labels" {
  source      = "cloudposse/label/null"

  context = var.context
}