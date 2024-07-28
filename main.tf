resource "azurerm_resource_group" "RG_Name" {
  location   = "uaenorth"
  managed_by = null
  name       = "Boomi-Stage-RG"
  tags       = {}
}

resource "azurerm_virtual_network" "Vnets" {
  
  name                = "Boomi-Stage-Vnet"
  resource_group_name = azurerm_resource_group.RG_Name.name
  location            = azurerm_resource_group.RG_Name.location
  address_space       = ["10.51.22.0/24"]
  subnet {
    name           = "Boomi-Stage-API-Snet-01"
    address_prefix = "10.51.22.0/27"
  }
  subnet {
    name           = "Boomi-Stage-MOL-Snet-02"
    address_prefix = "10.51.22.32/27"
  }
  subnet {
    name           = "Boomi-Stage-PE-Snet-03"
    address_prefix = "10.51.22.64/27"
  }
  subnet {
    name           = "Boomi-Stage-PE-Snet-04"
    address_prefix = "10.51.22.96/27"
  }
}

resource "azurerm_network_security_group" "VM_NSG_01" {
  location            = "uaenorth"
  name                = "Boomi-ST-API01-nsg"
  resource_group_name = "Boomi-Stage-RG"
  security_rule = [{
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "22"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "SSH"
    priority                                   = 300
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "443"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "AllowHTTPS"
    priority                                   = 320
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
  }]
  tags = {}
}

# __generated__ by Terraform from "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkInterfaces/Boomi-ST-API01-nic"
resource "azurerm_network_interface" "Name_NIC_01" {
  auxiliary_mode                = null
  auxiliary_sku                 = null
  dns_servers                   = []
  edge_zone                     = null
  enable_accelerated_networking = false
  enable_ip_forwarding          = false
  internal_dns_name_label       = null
  location                      = "uaenorth"
  name                          = "Boomi-ST-API01-nic"
  resource_group_name           = "Boomi-Stage-RG"
  tags                          = {}
  ip_configuration {
    gateway_load_balancer_frontend_ip_configuration_id = null
    name                                               = "ipconfig"
    primary                                            = true
    private_ip_address                                 = "10.51.22.5"
    private_ip_address_allocation                      = "Dynamic"
    private_ip_address_version                         = "IPv4"
    public_ip_address_id                               = null
    subnet_id                                          = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/virtualNetworks/Boomi-Stage-Vnet/subnets/Boomi-Stage-API-Snet-01"
  }
}

# __generated__ by Terraform
resource "azurerm_linux_virtual_machine" "VM01" {
  admin_password                                         = null # sensitive
  admin_username                                         = "adminuser"
  allow_extension_operations                             = true
  availability_set_id                                    = null
  bypass_platform_safety_checks_on_user_schedule_enabled = false
  capacity_reservation_group_id                          = null
  computer_name                                          = "Boomi-ST-API01"
  custom_data                                            = null # sensitive
  dedicated_host_group_id                                = null
  dedicated_host_id                                      = null
  disable_password_authentication                        = false
  edge_zone                                              = null
  encryption_at_host_enabled                             = false
  eviction_policy                                        = null
  extensions_time_budget                                 = "PT1H30M"
  license_type                                           = null
  location                                               = "uaenorth"
  max_bid_price                                          = -1
  name                                                   = "Boomi-ST-API01"
  network_interface_ids                                  = ["/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkInterfaces/Boomi-ST-API01-nic"]
  patch_assessment_mode                                  = "ImageDefault"
  patch_mode                                             = "ImageDefault"
  priority                                               = "Regular"
  provision_vm_agent                                     = true
  proximity_placement_group_id                           = null
  reboot_setting                                         = null
  resource_group_name                                    = "Boomi-Stage-RG"
  secure_boot_enabled                                    = false
  size                                                   = "Standard_D4as_v4"
  source_image_id                                        = null
  tags                                                   = {}
  user_data                                              = null
  vtpm_enabled                                           = false
  zone                                                   = "1"
  os_disk {
    caching                          = "ReadWrite"
    disk_encryption_set_id           = null
    disk_size_gb                     = 64
    name                             = "Boomi-ST-API01_OsDisk_1_b972cc360e574c46aa706036fb5e8eb1"
    secure_vm_disk_encryption_set_id = null
    security_encryption_type         = null
    storage_account_type             = "Premium_LRS"
    write_accelerator_enabled        = false
  }
  source_image_reference {
    offer     = "0001-com-ubuntu-server-focal"
    publisher = "canonical"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}
resource "azurerm_managed_disk" "disks_01" {
  
  name                 = "ST-API01-boomiapi-disk"
  resource_group_name = azurerm_resource_group.RG_Name.name
  location            = azurerm_resource_group.RG_Name.location
  storage_account_type = "Standard_LRS"
  zone = "1"
  create_option        = "Empty"
  disk_size_gb         = "128"
}

import {
  to = azurerm_linux_virtual_machine.VM02
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/virtualMachines/Boomi-ST-API02"
}

import {
  to = azurerm_network_interface.Name_NIC_02
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkInterfaces/Boomi-ST-API02-nic"
}
import {
  to = azurerm_network_security_group.VM_NSG_02
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkSecurityGroups/Boomi-ST-API02-nsg"
}

