# PostgreSQL Database Schema for Windows 11 Migration
# Project 001: Windows 11 Migration with InTune
# Data Model: 6 core entities (MIGRATION_EVENT, MIGRATION_WAVE, APP_COMPATIBILITY_TEST, COST_TRACKING, STAKEHOLDER, UPDATE_RING_ASSIGNMENT)

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1.21"
    }
  }
}

# MIGRATION_WAVE table (must be created first - parent entity)
resource "postgresql_table" "migration_wave" {
  schema = var.schema_name
  name   = "migration_wave"

  columns = [
    {
      name     = "wave_id"
      type     = "UUID"
      not_null = true
    },
    {
      name     = "wave_name"
      type     = "VARCHAR(100)"
      not_null = true
      unique   = true
    },
    {
      name     = "wave_number"
      type     = "INTEGER"
      not_null = true
    },
    {
      name     = "wave_type"
      type     = "VARCHAR(50)"
      not_null = true
      comment  = "Pilot, Early Adopter, or Production"
    },
    {
      name     = "scheduled_start"
      type     = "TIMESTAMP"
      not_null = true
    },
    {
      name     = "scheduled_end"
      type     = "TIMESTAMP"
      not_null = true
    },
    {
      name     = "actual_start"
      type     = "TIMESTAMP"
      not_null = false
    },
    {
      name     = "actual_end"
      type     = "TIMESTAMP"
      not_null = false
    },
    {
      name     = "target_device_count"
      type     = "INTEGER"
      not_null = true
    },
    {
      name     = "completed_device_count"
      type     = "INTEGER"
      not_null = true
      default  = "0"
    },
    {
      name     = "success_device_count"
      type     = "INTEGER"
      not_null = true
      default  = "0"
    },
    {
      name     = "failed_device_count"
      type     = "INTEGER"
      not_null = true
      default  = "0"
    },
    {
      name     = "success_rate_percent"
      type     = "DECIMAL(5,2)"
      not_null = false
    },
    {
      name     = "wave_status"
      type     = "VARCHAR(50)"
      not_null = true
      default  = "'Planned'"
      comment  = "Planned, In Progress, Completed, Cancelled"
    },
    {
      name     = "wave_description"
      type     = "TEXT"
      not_null = false
    },
    {
      name     = "owner"
      type     = "VARCHAR(255)"
      not_null = false
    },
    {
      name     = "created_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "updated_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "data_classification"
      type     = "VARCHAR(50)"
      not_null = true
      default  = "'INTERNAL'"
    }
  ]

  primary_key {
    columns = ["wave_id"]
  }

  lifecycle {
    prevent_destroy = true
  }
}

# MIGRATION_EVENT table (child of MIGRATION_WAVE)
resource "postgresql_table" "migration_event" {
  schema     = var.schema_name
  name       = "migration_event"
  depends_on = [postgresql_table.migration_wave]

  columns = [
    {
      name     = "event_id"
      type     = "UUID"
      not_null = true
    },
    {
      name     = "device_id"
      type     = "UUID"
      not_null = true
      comment  = "InTune Device ID"
    },
    {
      name     = "migration_wave_id"
      type     = "UUID"
      not_null = true
    },
    {
      name     = "event_type"
      type     = "VARCHAR(50)"
      not_null = true
      comment  = "Pre-Check, Autopilot, OneDrive Sync, App Install, Post-Validation"
    },
    {
      name     = "event_timestamp"
      type     = "TIMESTAMP"
      not_null = true
    },
    {
      name     = "migration_status"
      type     = "VARCHAR(50)"
      not_null = true
      comment  = "Success, Failed, In Progress, Rolled Back"
    },
    {
      name     = "downtime_minutes"
      type     = "INTEGER"
      not_null = false
    },
    {
      name     = "failure_reason"
      type     = "TEXT"
      not_null = false
    },
    {
      name     = "resolution_notes"
      type     = "TEXT"
      not_null = false
    },
    {
      name     = "onedrive_sync_verified"
      type     = "BOOLEAN"
      not_null = false
    },
    {
      name     = "autopilot_profile_applied"
      type     = "BOOLEAN"
      not_null = false
    },
    {
      name     = "compliance_check_passed"
      type     = "BOOLEAN"
      not_null = false
    },
    {
      name     = "initiated_by"
      type     = "VARCHAR(255)"
      not_null = false
    },
    {
      name     = "created_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "updated_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "data_classification"
      type     = "VARCHAR(50)"
      not_null = true
      default  = "'INTERNAL'"
    }
  ]

  primary_key {
    columns = ["event_id"]
  }

  foreign_keys = [
    {
      columns            = ["migration_wave_id"]
      referenced_table   = "migration_wave"
      referenced_columns = ["wave_id"]
      on_delete          = "RESTRICT"
    }
  ]

  lifecycle {
    prevent_destroy = true
  }
}

# APP_COMPATIBILITY_TEST table (independent entity)
resource "postgresql_table" "app_compatibility_test" {
  schema = var.schema_name
  name   = "app_compatibility_test"

  columns = [
    {
      name     = "test_id"
      type     = "UUID"
      not_null = true
    },
    {
      name     = "application_id"
      type     = "UUID"
      not_null = true
      comment  = "Business application identifier"
    },
    {
      name     = "application_name"
      type     = "VARCHAR(255)"
      not_null = true
    },
    {
      name     = "application_version"
      type     = "VARCHAR(50)"
      not_null = false
    },
    {
      name     = "vendor_name"
      type     = "VARCHAR(255)"
      not_null = false
    },
    {
      name     = "test_environment"
      type     = "VARCHAR(50)"
      not_null = true
      comment  = "Lab, Pilot, Production"
    },
    {
      name     = "test_date"
      type     = "TIMESTAMP"
      not_null = true
    },
    {
      name     = "test_result"
      type     = "VARCHAR(50)"
      not_null = true
      comment  = "Pass, Fail, Partial, Blocked"
    },
    {
      name     = "compatibility_score"
      type     = "INTEGER"
      not_null = false
      comment  = "0-100 score"
    },
    {
      name     = "test_notes"
      type     = "TEXT"
      not_null = false
    },
    {
      name     = "blocker_issues"
      type     = "TEXT"
      not_null = false
    },
    {
      name     = "remediation_plan"
      type     = "TEXT"
      not_null = false
    },
    {
      name     = "approved_for_deployment"
      type     = "BOOLEAN"
      not_null = true
      default  = "false"
    },
    {
      name     = "tested_by"
      type     = "VARCHAR(255)"
      not_null = false
    },
    {
      name     = "approved_by"
      type     = "VARCHAR(255)"
      not_null = false
    },
    {
      name     = "approval_date"
      type     = "TIMESTAMP"
      not_null = false
    },
    {
      name     = "created_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "updated_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "data_classification"
      type     = "VARCHAR(50)"
      not_null = true
      default  = "'INTERNAL'"
    }
  ]

  primary_key {
    columns = ["test_id"]
  }

  lifecycle {
    prevent_destroy = true
  }
}

# COST_TRACKING table (CONFIDENTIAL data)
resource "postgresql_table" "cost_tracking" {
  schema     = var.schema_name
  name       = "cost_tracking"
  depends_on = [postgresql_table.migration_wave]

  columns = [
    {
      name     = "cost_record_id"
      type     = "UUID"
      not_null = true
    },
    {
      name     = "device_id"
      type     = "UUID"
      not_null = false
      comment  = "Nullable for program-level costs"
    },
    {
      name     = "migration_wave_id"
      type     = "UUID"
      not_null = false
    },
    {
      name     = "cost_category"
      type     = "VARCHAR(50)"
      not_null = true
      comment  = "Hardware, Licenses, Professional Services, Training, Support"
    },
    {
      name     = "cost_description"
      type     = "VARCHAR(255)"
      not_null = true
    },
    {
      name     = "cost_amount_gbp"
      type     = "DECIMAL(12,2)"
      not_null = true
    },
    {
      name     = "cost_date"
      type     = "DATE"
      not_null = true
    },
    {
      name     = "budget_code"
      type     = "VARCHAR(50)"
      not_null = false
    },
    {
      name     = "purchase_order_number"
      type     = "VARCHAR(50)"
      not_null = false
    },
    {
      name     = "vendor_name"
      type     = "VARCHAR(255)"
      not_null = false
    },
    {
      name     = "approved_by"
      type     = "VARCHAR(255)"
      not_null = false
    },
    {
      name     = "approval_date"
      type     = "DATE"
      not_null = false
    },
    {
      name     = "fiscal_year"
      type     = "VARCHAR(10)"
      not_null = true
    },
    {
      name     = "fiscal_quarter"
      type     = "VARCHAR(10)"
      not_null = true
    },
    {
      name     = "created_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "updated_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "data_classification"
      type     = "VARCHAR(50)"
      not_null = true
      default  = "'CONFIDENTIAL'"
    }
  ]

  primary_key {
    columns = ["cost_record_id"]
  }

  foreign_keys = [
    {
      columns            = ["migration_wave_id"]
      referenced_table   = "migration_wave"
      referenced_columns = ["wave_id"]
      on_delete          = "RESTRICT"
    }
  ]

  lifecycle {
    prevent_destroy = true
  }
}

# STAKEHOLDER table (CONFIDENTIAL data - contains PII)
resource "postgresql_table" "stakeholder" {
  schema = var.schema_name
  name   = "stakeholder"

  columns = [
    {
      name     = "stakeholder_id"
      type     = "UUID"
      not_null = true
    },
    {
      name     = "stakeholder_name"
      type     = "VARCHAR(255)"
      not_null = true
      comment  = "PII - Personal Identifiable Information"
    },
    {
      name     = "role"
      type     = "VARCHAR(100)"
      not_null = true
      comment  = "CISO, CFO, IT Operations Manager, etc."
    },
    {
      name     = "department"
      type     = "VARCHAR(100)"
      not_null = false
    },
    {
      name     = "email"
      type     = "VARCHAR(255)"
      not_null = true
      unique   = true
      comment  = "PII - Email address"
    },
    {
      name     = "phone"
      type     = "VARCHAR(50)"
      not_null = false
      comment  = "PII - Phone number"
    },
    {
      name     = "raci_role"
      type     = "VARCHAR(50)"
      not_null = true
      comment  = "Responsible, Accountable, Consulted, Informed"
    },
    {
      name     = "notification_preference"
      type     = "VARCHAR(50)"
      not_null = false
      comment  = "Email, Teams, None"
    },
    {
      name     = "active"
      type     = "BOOLEAN"
      not_null = true
      default  = "true"
    },
    {
      name     = "created_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "updated_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "data_classification"
      type     = "VARCHAR(50)"
      not_null = true
      default  = "'CONFIDENTIAL'"
      comment  = "Contains PII - UK GDPR Article 4(1)"
    }
  ]

  primary_key {
    columns = ["stakeholder_id"]
  }

  lifecycle {
    prevent_destroy = true
  }
}

# UPDATE_RING_ASSIGNMENT table (child of MIGRATION_WAVE)
resource "postgresql_table" "update_ring_assignment" {
  schema     = var.schema_name
  name       = "update_ring_assignment"
  depends_on = [postgresql_table.migration_wave]

  columns = [
    {
      name     = "assignment_id"
      type     = "UUID"
      not_null = true
    },
    {
      name     = "device_id"
      type     = "UUID"
      not_null = true
      comment  = "InTune Device ID"
    },
    {
      name     = "migration_wave_id"
      type     = "UUID"
      not_null = true
    },
    {
      name     = "update_ring_name"
      type     = "VARCHAR(100)"
      not_null = true
      comment  = "Pilot Ring, Ring 1, Ring 2, Ring 3, Ring 4"
    },
    {
      name     = "ring_number"
      type     = "INTEGER"
      not_null = true
      comment  = "1-4 (Pilot=1, Early Adopters=2, Broad Production=3-4)"
    },
    {
      name     = "assignment_date"
      type     = "TIMESTAMP"
      not_null = true
    },
    {
      name     = "deployment_start_date"
      type     = "TIMESTAMP"
      not_null = false
    },
    {
      name     = "deployment_end_date"
      type     = "TIMESTAMP"
      not_null = false
    },
    {
      name     = "ring_status"
      type     = "VARCHAR(50)"
      not_null = true
      default  = "'Assigned'"
      comment  = "Assigned, In Progress, Completed, Failed"
    },
    {
      name     = "deferral_days"
      type     = "INTEGER"
      not_null = false
      comment  = "Windows Update deferral period (0-365 days)"
    },
    {
      name     = "assigned_by"
      type     = "VARCHAR(255)"
      not_null = false
    },
    {
      name     = "created_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "updated_at"
      type     = "TIMESTAMP"
      not_null = true
      default  = "CURRENT_TIMESTAMP"
    },
    {
      name     = "data_classification"
      type     = "VARCHAR(50)"
      not_null = true
      default  = "'INTERNAL'"
    }
  ]

  primary_key {
    columns = ["assignment_id"]
  }

  foreign_keys = [
    {
      columns            = ["migration_wave_id"]
      referenced_table   = "migration_wave"
      referenced_columns = ["wave_id"]
      on_delete          = "RESTRICT"
    }
  ]

  lifecycle {
    prevent_destroy = true
  }
}

# Indexes for performance
resource "postgresql_index" "idx_migration_event_device" {
  schema     = var.schema_name
  table      = postgresql_table.migration_event.name
  name       = "idx_migration_event_device_id"
  columns    = ["device_id"]
  depends_on = [postgresql_table.migration_event]
}

resource "postgresql_index" "idx_migration_event_wave" {
  schema     = var.schema_name
  table      = postgresql_table.migration_event.name
  name       = "idx_migration_event_wave_id"
  columns    = ["migration_wave_id"]
  depends_on = [postgresql_table.migration_event]
}

resource "postgresql_index" "idx_migration_event_status" {
  schema     = var.schema_name
  table      = postgresql_table.migration_event.name
  name       = "idx_migration_event_status"
  columns    = ["migration_status"]
  depends_on = [postgresql_table.migration_event]
}

resource "postgresql_index" "idx_migration_event_timestamp" {
  schema     = var.schema_name
  table      = postgresql_table.migration_event.name
  name       = "idx_migration_event_timestamp"
  columns    = ["event_timestamp"]
  depends_on = [postgresql_table.migration_event]
}

resource "postgresql_index" "idx_migration_wave_status" {
  schema     = var.schema_name
  table      = postgresql_table.migration_wave.name
  name       = "idx_migration_wave_status"
  columns    = ["wave_status"]
  depends_on = [postgresql_table.migration_wave]
}

resource "postgresql_index" "idx_migration_wave_number" {
  schema     = var.schema_name
  table      = postgresql_table.migration_wave.name
  name       = "idx_migration_wave_number"
  columns    = ["wave_number"]
  depends_on = [postgresql_table.migration_wave]
}

resource "postgresql_index" "idx_app_compat_result" {
  schema     = var.schema_name
  table      = postgresql_table.app_compatibility_test.name
  name       = "idx_app_compatibility_test_result"
  columns    = ["test_result"]
  depends_on = [postgresql_table.app_compatibility_test]
}

resource "postgresql_index" "idx_app_compat_approved" {
  schema     = var.schema_name
  table      = postgresql_table.app_compatibility_test.name
  name       = "idx_app_compatibility_approved"
  columns    = ["approved_for_deployment"]
  depends_on = [postgresql_table.app_compatibility_test]
}

resource "postgresql_index" "idx_cost_category" {
  schema     = var.schema_name
  table      = postgresql_table.cost_tracking.name
  name       = "idx_cost_tracking_category"
  columns    = ["cost_category"]
  depends_on = [postgresql_table.cost_tracking]
}

resource "postgresql_index" "idx_cost_fiscal_year" {
  schema     = var.schema_name
  table      = postgresql_table.cost_tracking.name
  name       = "idx_cost_tracking_fiscal_year"
  columns    = ["fiscal_year", "fiscal_quarter"]
  depends_on = [postgresql_table.cost_tracking]
}

resource "postgresql_index" "idx_stakeholder_email" {
  schema     = var.schema_name
  table      = postgresql_table.stakeholder.name
  name       = "idx_stakeholder_email"
  columns    = ["email"]
  unique     = true
  depends_on = [postgresql_table.stakeholder]
}

resource "postgresql_index" "idx_stakeholder_raci" {
  schema     = var.schema_name
  table      = postgresql_table.stakeholder.name
  name       = "idx_stakeholder_raci_role"
  columns    = ["raci_role"]
  depends_on = [postgresql_table.stakeholder]
}

resource "postgresql_index" "idx_update_ring_device" {
  schema     = var.schema_name
  table      = postgresql_table.update_ring_assignment.name
  name       = "idx_update_ring_device_id"
  columns    = ["device_id"]
  depends_on = [postgresql_table.update_ring_assignment]
}

resource "postgresql_index" "idx_update_ring_number" {
  schema     = var.schema_name
  table      = postgresql_table.update_ring_assignment.name
  name       = "idx_update_ring_number"
  columns    = ["ring_number"]
  depends_on = [postgresql_table.update_ring_assignment]
}
