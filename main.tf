resource "google_biglake_iceberg_catalog" "biglake_iceberg_catalogs" {
  for_each = var.biglake_iceberg_catalogs

  catalog_type     = each.value.catalog_type
  name             = each.value.name
  credential_mode  = each.value.credential_mode
  default_location = each.value.default_location
  deletion_policy  = each.value.deletion_policy
  description      = each.value.description
  primary_location = each.value.primary_location
  project          = each.value.project

  dynamic "federated_catalog_options" {
    for_each = each.value.federated_catalog_options != null ? [each.value.federated_catalog_options] : []
    content {
      dynamic "glue_catalog_info" {
        for_each = federated_catalog_options.value.glue_catalog_info != null ? [federated_catalog_options.value.glue_catalog_info] : []
        content {
          aws_region   = glue_catalog_info.value.aws_region
          aws_role_arn = glue_catalog_info.value.aws_role_arn
          warehouse    = glue_catalog_info.value.warehouse
        }
      }
      dynamic "refresh_options" {
        for_each = federated_catalog_options.value.refresh_options != null ? [federated_catalog_options.value.refresh_options] : []
        content {
          dynamic "refresh_schedule" {
            for_each = refresh_options.value.refresh_schedule != null ? [refresh_options.value.refresh_schedule] : []
            content {
              refresh_interval = refresh_schedule.value.refresh_interval
            }
          }
          dynamic "refresh_scope" {
            for_each = refresh_options.value.refresh_scope != null ? [refresh_options.value.refresh_scope] : []
            content {
              namespace_filters = refresh_scope.value.namespace_filters
            }
          }
        }
      }
      secret_name            = federated_catalog_options.value.secret_name
      service_directory_name = federated_catalog_options.value.service_directory_name
      dynamic "unity_catalog_info" {
        for_each = federated_catalog_options.value.unity_catalog_info != null ? [federated_catalog_options.value.unity_catalog_info] : []
        content {
          catalog_name                     = unity_catalog_info.value.catalog_name
          instance_name                    = unity_catalog_info.value.instance_name
          service_principal_application_id = unity_catalog_info.value.service_principal_application_id
        }
      }
    }
  }

  dynamic "restricted_locations_config" {
    for_each = each.value.restricted_locations_config != null ? [each.value.restricted_locations_config] : []
    content {
      restricted_locations = restricted_locations_config.value.restricted_locations
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

