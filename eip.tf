
# resource "alicloud_eip_address" "qa_eip" {
#   description               = "test"
#   isp                       = "BGP"
#   address_name              = var.eip
#   netmode                   = "public"
#   bandwidth                 = "5"
#   security_protection_types = ["AntiDDoS_Enhanced"]
#   payment_type              = "PayAsYouGo"


#   resource_group_id = alicloud_resource_manager_resource_group.qa_rg.id


#   tags = {
#     BuiltBy     = "SabryTarek"
#     cnm_version = "1"
#     Environment = "qa"
#     ManagedBy   = "SabryTarek"
#   }
# }


# resource "alicloud_eip_association" "qa_association" {
#   allocation_id = alicloud_eip_address.qa_eip.id
#   instance_id   = alicloud_instance.qa_ecs.id
# }