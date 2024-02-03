resource "alicloud_resource_manager_resource_group" "qa_rg" {
  resource_group_name = var.rg
  display_name        = var.rg
}