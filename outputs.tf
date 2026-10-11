output "datascience_model_artifact_exports_id" {
  description = "Map of id values across all datascience_model_artifact_exports, keyed the same as var.datascience_model_artifact_exports except keys with no id are omitted"
  value       = { for k, v in oci_datascience_model_artifact_export.datascience_model_artifact_exports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_model_artifact_exports_artifact_source_type" {
  description = "Map of artifact_source_type values across all datascience_model_artifact_exports, keyed the same as var.datascience_model_artifact_exports except keys with no artifact_source_type are omitted"
  value       = { for k, v in oci_datascience_model_artifact_export.datascience_model_artifact_exports : k => v.artifact_source_type if v.artifact_source_type != null && length(v.artifact_source_type) > 0 }
}
output "datascience_model_artifact_exports_model_id" {
  description = "Map of model_id values across all datascience_model_artifact_exports, keyed the same as var.datascience_model_artifact_exports except keys with no model_id are omitted"
  value       = { for k, v in oci_datascience_model_artifact_export.datascience_model_artifact_exports : k => v.model_id if v.model_id != null && length(v.model_id) > 0 }
}
output "datascience_model_artifact_exports_namespace" {
  description = "Map of namespace values across all datascience_model_artifact_exports, keyed the same as var.datascience_model_artifact_exports except keys with no namespace are omitted"
  value       = { for k, v in oci_datascience_model_artifact_export.datascience_model_artifact_exports : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "datascience_model_artifact_exports_source_bucket" {
  description = "Map of source_bucket values across all datascience_model_artifact_exports, keyed the same as var.datascience_model_artifact_exports except keys with no source_bucket are omitted"
  value       = { for k, v in oci_datascience_model_artifact_export.datascience_model_artifact_exports : k => v.source_bucket if v.source_bucket != null && length(v.source_bucket) > 0 }
}
output "datascience_model_artifact_exports_source_object_name" {
  description = "Map of source_object_name values across all datascience_model_artifact_exports, keyed the same as var.datascience_model_artifact_exports except keys with no source_object_name are omitted"
  value       = { for k, v in oci_datascience_model_artifact_export.datascience_model_artifact_exports : k => v.source_object_name if v.source_object_name != null && length(v.source_object_name) > 0 }
}
output "datascience_model_artifact_exports_source_region" {
  description = "Map of source_region values across all datascience_model_artifact_exports, keyed the same as var.datascience_model_artifact_exports except keys with no source_region are omitted"
  value       = { for k, v in oci_datascience_model_artifact_export.datascience_model_artifact_exports : k => v.source_region if v.source_region != null && length(v.source_region) > 0 }
}

