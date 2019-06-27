# Please add the provider here.


resource "azurestack_resource_group" "azsrg" {
    name     = "RG_Terraform"
    location = "shanghai"
}

resource "azurestack_managed_disk" "disk" {
  name                = "mdempty01"
  resource_group_name = "${azurestack_resource_group.azsrg.name}"
  location            = "${azurestack_resource_group.azsrg.location}"

  # you can put the managed disk in another location
  # if you don't specify location, it'll be created in resource group location
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  #source_uri           = "${var.source_uri}"
  #source_resource_id   = "${var.source_resource_id}"
  #image_reference_id   = "${var.image_reference_id}"
  disk_size_gb         = "1"
}