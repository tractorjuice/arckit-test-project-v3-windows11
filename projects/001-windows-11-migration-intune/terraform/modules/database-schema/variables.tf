# Variables for PostgreSQL Database Schema Module
# Project 001: Windows 11 Migration with InTune

variable "schema_name" {
  description = "PostgreSQL schema name (typically 'public')"
  type        = string
  default     = "public"
}

variable "create_extensions" {
  description = "Create PostgreSQL extensions (uuid-ossp for UUID generation)"
  type        = bool
  default     = true
}

variable "enable_row_level_security" {
  description = "Enable row-level security for GDPR compliance (future)"
  type        = bool
  default     = false
}
