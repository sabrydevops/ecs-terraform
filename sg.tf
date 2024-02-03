# Create a security group
resource "alicloud_security_group" "qa_sg" {
  name                = local.prefix
  description = "Jana qa security group"
  vpc_id              = alicloud_vpc.qa_vpc.id
  security_group_type = "normal"
  # Allow instances in the same security group reaching each other
  inner_access_policy = "Accept"
  resource_group_id = alicloud_resource_manager_resource_group.qa_rg.id


  tags = {
    BuiltBy     = "SabryTarek"
    cnm_version = "1"
    Environment = "qa"
    ManagedBy   = "SabryTarek"
  }
}




resource "alicloud_security_group_rule" "allow_ssh" {
  # Refer the security group ID
  security_group_id = alicloud_security_group.qa_sg.id
  type              = "ingress"
  ip_protocol       = "tcp"
  # Since the security group is for using in the VPC, you need to set it to intranet: https://www.terraform.io/docs/providers/alicloud/r/security_group_rule.html
  nic_type          = "intranet"
  policy            = "accept"
  cidr_ip           = "0.0.0.0/0"
  port_range        = "22/22"
}




resource "alicloud_security_group_rule" "allow_icmp" {
  security_group_id = alicloud_security_group.qa_sg.id
  type              = "ingress"
  ip_protocol       = "icmp"
  nic_type          = "intranet"
  policy            = "accept"
  cidr_ip           = "0.0.0.0/0"
}










# ######################################################################################
# # # Create a new security group
# # resource "alicloud_security_group" "example_security_group" {
# #   name        = "example-security-group"
# #   vpc_id      = alicloud_vpc.example_vpc.id
# #   description = "Example security group"

# #   # Add inbound rules
# #   ingress {
# #     rule_protocol = "tcp"
# #     rule_action   = "accept"
# #     rule_port_range = "22/22"
# #     source_cidr_ip = "0.0.0.0/0"
# #   }

# #   ingress {
# #     rule_protocol = "tcp"
# #     rule_action   = "accept"
# #     rule_port_range = "80/80"
# #     source_cidr_ip = "0.0.0.0/0"
# #   }

# #   # Add outbound rule
# #   egress {
# #     rule_protocol = "all"
# #     rule_action   = "accept"
# #     destination_cidr_ip = "0.0.0.0/0"
# #   }
# # }
# ######################################################################################