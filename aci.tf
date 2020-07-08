resource "azurerm_container_group" "aci_cg" {
  name                  = "${var.container_group_name}"
  resource_group_name   = "${azurerm_resource_group.aci_rg.name}"
  location              = "${azurerm_resource_group.aci_rg.location}"
  ip_address_type       = "public"
  dns_name_label        = "${var.dns_name_label}"
  os_type               = "${var.os_type}"

  container {
      name      = "${var.container_name}"
      image     = "${var.image_name}"
      cpu       = "${var.cpu_core_number}"
      memory    = "${var.memory_size}"
      port      = "${var.port_number}"
  }
  tags = {
    app = var.app_name
    env = var.env_name
  }
  volume {
      name       = "${var.volume_name}"
      mount_path = "${var.path}"
      read_only  = false
      share_name = "${azurerm_storage_share.aci.name}"
      storage_account_name = "${azurerm_storage_account.aci.name}"
      storage_account_key  = "${azurerm_storage_account.aci.primary_access_key}"
  }
}
