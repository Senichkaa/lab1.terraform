module "authors_table" {
  source = "./modules/dynamodb"

  name = "Authors"
  context   = module.name.context
}

module "courses_table" {
  source = "./modules/dynamodb"

  name = "Courses"
  context   = module.name.context
}

module "lambda_api" {
  source = "./modules/lambda"

  function_name = module.name.id
  handler       = "index.handler"
  lambda_zip    = "${path.module}./lambda.zip"
  context       = module.name.context
}

# resource "aws_iam_role_policy_attachment" "test-attach" {
#   role       = aws_iam_role.role.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
# }