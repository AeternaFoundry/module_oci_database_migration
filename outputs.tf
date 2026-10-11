output "database_migrations_id" {
  description = "Map of id values across all database_migrations, keyed the same as var.database_migrations except keys with no id are omitted"
  value       = { for k, v in oci_database_migration.database_migrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_migrations_additional_migrations" {
  description = "Map of additional_migrations values across all database_migrations, keyed the same as var.database_migrations except keys with no additional_migrations are omitted"
  value       = { for k, v in oci_database_migration.database_migrations : k => v.additional_migrations if v.additional_migrations != null && length(v.additional_migrations) > 0 }
}
output "database_migrations_cloud_exadata_infrastructure_id" {
  description = "Map of cloud_exadata_infrastructure_id values across all database_migrations, keyed the same as var.database_migrations except keys with no cloud_exadata_infrastructure_id are omitted"
  value       = { for k, v in oci_database_migration.database_migrations : k => v.cloud_exadata_infrastructure_id if v.cloud_exadata_infrastructure_id != null && length(v.cloud_exadata_infrastructure_id) > 0 }
}
output "database_migrations_cloud_vm_cluster_id" {
  description = "Map of cloud_vm_cluster_id values across all database_migrations, keyed the same as var.database_migrations except keys with no cloud_vm_cluster_id are omitted"
  value       = { for k, v in oci_database_migration.database_migrations : k => v.cloud_vm_cluster_id if v.cloud_vm_cluster_id != null && length(v.cloud_vm_cluster_id) > 0 }
}
output "database_migrations_db_system_id" {
  description = "Map of db_system_id values across all database_migrations, keyed the same as var.database_migrations except keys with no db_system_id are omitted"
  value       = { for k, v in oci_database_migration.database_migrations : k => v.db_system_id if v.db_system_id != null && length(v.db_system_id) > 0 }
}

