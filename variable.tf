variable "workforce_pool_id" {
  type        = string
  description = "Workforce Pool ID"
}

variable "parent" {
  type        = string
  description = "Parent id"
}

variable "location" {
  type        = string
  description = "Location of the Pool"
}

variable "display_name" {
  type        = string
  default     = null
  description = "Display name of the Pool"
}

variable "description" {
  type        = string
  default     = null
  description = "Description of the Pool"
}

variable "disabled" {
  type        = bool
  default     = false
  description = "Enable the Pool"
}

variable "session_duration" {
  type        = string
  default     = "3600s"
  description = "Session Duration"
}

variable "wif_providers" {
  type        = list(any)
  description = "Provider config"
}

variable "project_bindings" {
  type = list(object(
    {
      project_id     = string
      roles          = list(string)
      attribute      = string
      all_identities = bool
    }
  ))

  description = "Project bindings"
}





