output "glue_schemas_id" {
  description = "Map of id values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "glue_schemas_arn" {
  description = "Map of arn values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "glue_schemas_compatibility" {
  description = "Map of compatibility values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.compatibility if v.compatibility != null && length(v.compatibility) > 0 }
}
output "glue_schemas_data_format" {
  description = "Map of data_format values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.data_format if v.data_format != null && length(v.data_format) > 0 }
}
output "glue_schemas_description" {
  description = "Map of description values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.description if v.description != null && length(v.description) > 0 }
}
output "glue_schemas_latest_schema_version" {
  description = "Map of latest_schema_version values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.latest_schema_version if v.latest_schema_version != null }
}
output "glue_schemas_next_schema_version" {
  description = "Map of next_schema_version values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.next_schema_version if v.next_schema_version != null }
}
output "glue_schemas_region" {
  description = "Map of region values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.region if v.region != null && length(v.region) > 0 }
}
output "glue_schemas_registry_arn" {
  description = "Map of registry_arn values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.registry_arn if v.registry_arn != null && length(v.registry_arn) > 0 }
}
output "glue_schemas_registry_name" {
  description = "Map of registry_name values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.registry_name if v.registry_name != null && length(v.registry_name) > 0 }
}
output "glue_schemas_schema_checkpoint" {
  description = "Map of schema_checkpoint values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.schema_checkpoint if v.schema_checkpoint != null }
}
output "glue_schemas_schema_definition" {
  description = "Map of schema_definition values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.schema_definition if v.schema_definition != null && length(v.schema_definition) > 0 }
}
output "glue_schemas_schema_name" {
  description = "Map of schema_name values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "glue_schemas_tags" {
  description = "Map of tags values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "glue_schemas_tags_all" {
  description = "Map of tags_all values across all glue_schemas, keyed the same as var.glue_schemas"
  value       = { for k, v in aws_glue_schema.glue_schemas : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

