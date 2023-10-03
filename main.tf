module "ace_automation" {
  source                    = "./_modules/day-zero"
  aws_account_name          = var.aws_account_name
  aws_transit_instance_size = "t3.small"
  password                  = var.password
  aws_region                = var.aws_region
}

resource "aviatrix_segmentation_network_domain_connection_policy" "ace_automation" {
   domain_name_1 = module.ace_automation.bu1_network_domain_name
   domain_name_2 = module.ace_automation.bu2_network_domain_name
 }
