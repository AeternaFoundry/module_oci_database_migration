resource "oci_database_migration" "database_migrations" {
  for_each = var.database_migrations

  db_system_id = each.value.db_system_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

