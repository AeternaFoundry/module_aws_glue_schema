variable "glue_schemas" {
  description = <<EOT
Map of glue_schemas, attributes below
Required:
    - compatibility
    - data_format
    - schema_definition
    - schema_name
Optional:
    - description
    - region
    - registry_arn
    - tags
    - tags_all
EOT

  type = map(object({
    compatibility     = string
    data_format       = string
    schema_definition = string
    schema_name       = string
    description       = optional(string)
    region            = optional(string)
    registry_arn      = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.glue_schemas : (
        (length(v.schema_definition) >= 1 && length(v.schema_definition) <= 170000) && (can(regex(".*\\S.*", v.schema_definition)))
      )
    ])
    error_message = "all of: must be between 1 and 170000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.glue_schemas : (
        (length(v.schema_name) >= 1 && length(v.schema_name) <= 255) && (can(regex("[0-9A-Za-z_$#-]+$", v.schema_name)))
      )
    ])
    error_message = "all of: must be between 1 and 255 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

