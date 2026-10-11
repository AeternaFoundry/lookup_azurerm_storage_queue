data "azurerm_storage_queue" "storage_queue_lookup" {
  for_each = var.storage_queue_lookup

  name               = each.value.name
  storage_account_id = each.value.storage_account_id
  metadata           = each.value.metadata
}

