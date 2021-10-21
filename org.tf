# resource "aws_organizations_organization" "org" {
#   aws_service_access_principals = [
#     "cloudtrail.amazonaws.com",
#     "config.amazonaws.com"
#   ]
#   feature_set = "ALL"
# }

resource aws_organizations_organizational_unit ou1{
  name = "ou1"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource aws_organizations_account account1 {
   name  = "account11"
   email = "tketomo+terraform11@amazon.co.jp"
   #parent_id = aws_organizations_organizational_unit.ou1.id
   
}
