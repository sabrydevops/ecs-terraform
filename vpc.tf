resource "alicloud_vpc" "qa_vpc" {
  # Here we used the variables in the `locals` section above
  vpc_name       = local.prefix
  description = "Jana qa VPC"
  # Set the CIDR for this VPC
  cidr_block = "10.0.0.0/16"


  resource_group_id = alicloud_resource_manager_resource_group.qa_rg.id


  tags = {
    BuiltBy     = "SabryTarek"
    cnm_version = "1"
    Environment = "qa"
    ManagedBy   = "SabryTarek"
  }
}