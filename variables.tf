variable "config" {
  type = object({
      env_type      = string
      env_name      = string
      project_name  = string

      values = object({
          business_unit     = string
          design_authority  = string
      })
  })

  description = "Config module."
}

variable "application" {
  type        = string
  description = "Name of the application"
}

variable "component" {
  type        = string
  description = "Name of the component"
}