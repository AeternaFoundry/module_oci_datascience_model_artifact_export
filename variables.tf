variable "datascience_model_artifact_exports" {
  description = <<EOT
Map of datascience_model_artifact_exports, attributes below
Required:
    - artifact_source_type
    - model_id
    - namespace
    - source_bucket
    - source_object_name
    - source_region
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    artifact_source_type = string
    model_id             = string
    namespace            = string
    source_bucket        = string
    source_object_name   = string
    source_region        = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datascience_model_artifact_exports : (
        contains([for v in ["ORACLE_OBJECT_STORAGE"] : lower(v)], lower(v.artifact_source_type))
      )
    ])
    error_message = "must be one of: \"ORACLE_OBJECT_STORAGE\""
  }
}

