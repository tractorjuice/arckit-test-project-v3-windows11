# Outputs for PostgreSQL Database Schema Module
# Project 001: Windows 11 Migration with InTune

output "schema_name" {
  description = "Name of the PostgreSQL schema"
  value       = var.schema_name
}

output "tables_created" {
  description = "List of tables created"
  value = [
    postgresql_table.migration_wave.name,
    postgresql_table.migration_event.name,
    postgresql_table.app_compatibility_test.name,
    postgresql_table.cost_tracking.name,
    postgresql_table.stakeholder.name,
    postgresql_table.update_ring_assignment.name
  ]
}

output "table_count" {
  description = "Number of tables created"
  value       = 6
}

output "indexes_created" {
  description = "List of indexes created"
  value = [
    postgresql_index.idx_migration_event_device.name,
    postgresql_index.idx_migration_event_wave.name,
    postgresql_index.idx_migration_event_status.name,
    postgresql_index.idx_migration_event_timestamp.name,
    postgresql_index.idx_migration_wave_status.name,
    postgresql_index.idx_migration_wave_number.name,
    postgresql_index.idx_app_compat_result.name,
    postgresql_index.idx_app_compat_approved.name,
    postgresql_index.idx_cost_category.name,
    postgresql_index.idx_cost_fiscal_year.name,
    postgresql_index.idx_stakeholder_email.name,
    postgresql_index.idx_stakeholder_raci.name,
    postgresql_index.idx_update_ring_device.name,
    postgresql_index.idx_update_ring_number.name
  ]
}

output "index_count" {
  description = "Number of indexes created"
  value       = 14
}

output "confidential_tables" {
  description = "Tables containing confidential data (GDPR compliance)"
  value = [
    postgresql_table.cost_tracking.name,
    postgresql_table.stakeholder.name
  ]
}

output "schema_summary" {
  description = "Summary of database schema deployment"
  value = {
    schema_name         = var.schema_name
    total_tables        = 6
    total_indexes       = 14
    total_foreign_keys  = 4
    confidential_tables = 2
    data_model_version  = "v1.0"
    entities = [
      "MIGRATION_WAVE",
      "MIGRATION_EVENT",
      "APP_COMPATIBILITY_TEST",
      "COST_TRACKING",
      "STAKEHOLDER",
      "UPDATE_RING_ASSIGNMENT"
    ]
  }
}
