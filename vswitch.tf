# Create a new VSwitch
resource "alicloud_vswitch" "qa_vswitch" {
  # Here we used the variables in the `locals` section above
  vswitch_name      = local.prefix
  description = "Jana qa vSwitch"
  # Use the VPC's ID
  vpc_id            = alicloud_vpc.qa_vpc.id
  # Set the CIDR for this switch, must be in the CIDR of the VPC
  cidr_block = "10.0.0.0/16"
  # As the VPC is a region-specified resource, switches are for zones
#   zone_id      = data.alicloud_zones.az.id
  zone_id      = local.zone


  tags = {
    BuiltBy     = "SabryTarek"
    cnm_version = "1"
    Environment = "qa"
    ManagedBy   = "SabryTarek"
  }
}