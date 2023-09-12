module "ace_automation" {
  source                    = "./_modules/day-zero"
  aws_account_name          = var.aws_account_name
  aws_transit_instance_size = "t3.micro"
  password                  = var.password
  aws_region                = var.aws_region
}

# resource "aviatrix_segmentation_network_domain_connection_policy" "ace_automation" {
#   domain_name_1 = "bu1"
#   domain_name_2 = "bu2"
#   depends_on    = [module.ace_automation]
# }
