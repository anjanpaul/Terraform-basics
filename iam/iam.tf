provider "aws" {
  region = "us-west-2"
  # access_key = ""
  # secret_key = ""
}


resource "aws_iam_user" "admin-user" {
  name = "lucy"
  tags = {
    Description = "Technical Team leader"
  }
}

resource "aws_iam_policy" "adminUser" {
  name = "AdminUsers"
  policy = file("admin-policy.json")

}

resource "aws_iam_user_policy_attachment" "lucy-admin-access" {
    user = aws_iam_user.admin-user.name
    policy_arn = aws_iam_policy.adminUser.arn
  
}

