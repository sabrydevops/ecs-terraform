# Create an ECS Instance
resource "alicloud_instance" "qa_ecs" {
#   instance_name        = "web"
  instance_name   = local.prefix # Refer to local variables
  host_name       = local.hostname


#   # You can find the image IDs on https://ecs.console.aliyun.com/ > Instances & Images > Images > Public Image
#   # Check out the whole list of the instance types: https://www.alibabacloud.com/help/doc-detail/25378.htm
#   # We use the cheapest instance type (I found so far) for testing "ecs.s6-c1m1.small"
  image_id             = "${data.alicloud_images.ubuntu.images.0.id}"
#   image_id                      = "ubuntu_18_04_x64_20G_alibase_20191225.vhd"
#   # Disable the useless "security enhancement" features
#   security_enhancement_strategy = "Deactive"
  # image_id             = "ubuntu_18_04_64_20G_alibase_20200220.vhd"
  instance_type        = "${data.alicloud_instance_types.c2g4.instance_types.0.id}"
  #   instance_type        = "ecs.sn1.medium"


#   security_groups      = ["sg-l4v7fjhcwgrholb5hilt"]
  security_groups = [alicloud_security_group.qa_sg.id] # The security groups associated to the instance
  #   security_groups      = ["${alicloud_security_group.default.id}"]
#   vswitch_id           = "vsw-l4v0zcofbr2rri4y11hqf"
  vswitch_id      = alicloud_vswitch.qa_vswitch.id # Refer to the vswitch ID
#   internet_charge_type = "PayByBandwidth"
#   internet_max_bandwidth_in  = 100
  internet_max_bandwidth_out = 100
  internet_charge_type       = "PayByTraffic" # Of course pay by traffic!!


  key_name             = alicloud_ecs_key_pair.qa_key_pair.key_pair_name
  password             = "9%epRTDsmx!kDg&t"


  user_data = "${data.template_file.user_data.template}"


  system_disk_category      = "cloud_essd"
  system_disk_size          = 80  # Replace with your desired system disk size (in GB)
  # Define the data disk details
#   data_disks {
#     name                   = "qa_80g_ssd"
#     description            = "Jana qa disk"
#     size                   = 80
#     category               = "cloud_essd"
#     delete_with_instance   = false
#     encrypted              = false
#   }


  # You can enable `dry_run` and run `terraform apply` to call the Alibaba Cloud API but not really create an instance
  #   dry_run = false
  instance_charge_type = "PostPaid" # Of course post paid!
  # credit_specification = "Standard"
  spot_strategy        = "NoSpot"

  resource_group_id = alicloud_resource_manager_resource_group.qa_rg.id


  tags = {
    BuiltBy     = "SabryTarek"
    cnm_version = "1"
    Environment = "qa"
    ManagedBy   = "SabryTarek"
  }
}