resource "oci_datascience_model_artifact_export" "datascience_model_artifact_exports" {
  for_each = var.datascience_model_artifact_exports

  artifact_source_type = each.value.artifact_source_type
  model_id             = each.value.model_id
  namespace            = each.value.namespace
  source_bucket        = each.value.source_bucket
  source_object_name   = each.value.source_object_name
  source_region        = each.value.source_region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

