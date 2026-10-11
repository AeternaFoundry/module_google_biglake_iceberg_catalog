output "biglake_iceberg_catalogs_id" {
  description = "Map of id values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no id are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "biglake_iceberg_catalogs_biglake_service_account" {
  description = "Map of biglake_service_account values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no biglake_service_account are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.biglake_service_account if v.biglake_service_account != null && length(v.biglake_service_account) > 0 }
}
output "biglake_iceberg_catalogs_biglake_service_account_id" {
  description = "Map of biglake_service_account_id values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no biglake_service_account_id are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.biglake_service_account_id if v.biglake_service_account_id != null && length(v.biglake_service_account_id) > 0 }
}
output "biglake_iceberg_catalogs_catalog_type" {
  description = "Map of catalog_type values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no catalog_type are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.catalog_type if v.catalog_type != null && length(v.catalog_type) > 0 }
}
output "biglake_iceberg_catalogs_create_time" {
  description = "Map of create_time values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no create_time are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "biglake_iceberg_catalogs_credential_mode" {
  description = "Map of credential_mode values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no credential_mode are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.credential_mode if v.credential_mode != null && length(v.credential_mode) > 0 }
}
output "biglake_iceberg_catalogs_default_location" {
  description = "Map of default_location values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no default_location are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.default_location if v.default_location != null && length(v.default_location) > 0 }
}
output "biglake_iceberg_catalogs_deletion_policy" {
  description = "Map of deletion_policy values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "biglake_iceberg_catalogs_description" {
  description = "Map of description values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no description are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "biglake_iceberg_catalogs_federated_catalog_options" {
  description = "Map of federated_catalog_options values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no federated_catalog_options are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => one(v.federated_catalog_options) if v.federated_catalog_options != null && length(v.federated_catalog_options) > 0 }
}
output "biglake_iceberg_catalogs_name" {
  description = "Map of name values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no name are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "biglake_iceberg_catalogs_primary_location" {
  description = "Map of primary_location values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no primary_location are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.primary_location if v.primary_location != null && length(v.primary_location) > 0 }
}
output "biglake_iceberg_catalogs_project" {
  description = "Map of project values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no project are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "biglake_iceberg_catalogs_replicas" {
  description = "Map of replicas values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no replicas are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.replicas if v.replicas != null && length(v.replicas) > 0 }
}
output "biglake_iceberg_catalogs_restricted_locations_config" {
  description = "Map of restricted_locations_config values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no restricted_locations_config are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => one(v.restricted_locations_config) if v.restricted_locations_config != null && length(v.restricted_locations_config) > 0 }
}
output "biglake_iceberg_catalogs_storage_regions" {
  description = "Map of storage_regions values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no storage_regions are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.storage_regions if v.storage_regions != null && length(v.storage_regions) > 0 }
}
output "biglake_iceberg_catalogs_update_time" {
  description = "Map of update_time values across all biglake_iceberg_catalogs, keyed the same as var.biglake_iceberg_catalogs except keys with no update_time are omitted"
  value       = { for k, v in google_biglake_iceberg_catalog.biglake_iceberg_catalogs : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

