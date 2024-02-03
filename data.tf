# data "alicloud_zones" "az" {
#   available_resource_creation = "VSwitch"
# }


data "alicloud_instance_types" "c2g4" {
  cpu_core_count = 2
  memory_size    = 4
}


data "alicloud_images" "ubuntu" {
  name_regex  = "^ubuntu"
  most_recent = true
  owners      = "system"
}


data "template_file" "user_data" {
  template = "${file("user-data.sh")}"
}