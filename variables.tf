variable "biglake_iceberg_catalogs" {
  description = <<EOT
Map of biglake_iceberg_catalogs, attributes below
Required:
    - catalog_type
    - name
Optional:
    - credential_mode
    - default_location
    - deletion_policy
    - description
    - primary_location
    - project
    - federated_catalog_options (block):
        - glue_catalog_info (optional, block):
            - aws_region (required)
            - aws_role_arn (required)
            - warehouse (required)
        - refresh_options (optional, block):
            - refresh_schedule (optional, block):
                - refresh_interval (optional)
            - refresh_scope (optional, block):
                - namespace_filters (optional)
        - secret_name (optional)
        - service_directory_name (optional)
        - unity_catalog_info (optional, block):
            - catalog_name (required)
            - instance_name (required)
            - service_principal_application_id (optional)
    - restricted_locations_config (block):
        - restricted_locations (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    catalog_type     = string
    name             = string
    credential_mode  = optional(string)
    default_location = optional(string)
    deletion_policy  = optional(string)
    description      = optional(string)
    primary_location = optional(string)
    project          = optional(string)
    federated_catalog_options = optional(object({
      glue_catalog_info = optional(object({
        aws_region   = string
        aws_role_arn = string
        warehouse    = string
      }))
      refresh_options = optional(object({
        refresh_schedule = optional(object({
          refresh_interval = optional(string)
        }))
        refresh_scope = optional(object({
          namespace_filters = optional(list(string))
        }))
      }))
      secret_name            = optional(string)
      service_directory_name = optional(string)
      unity_catalog_info = optional(object({
        catalog_name                     = string
        instance_name                    = string
        service_principal_application_id = optional(string)
      }))
    }))
    restricted_locations_config = optional(object({
      restricted_locations = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

