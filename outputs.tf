output "tags" {
  value = {
      "cost:project"            = var.config.project_name
      "cost:it-business-unit"   = var.config.values.business_unit
      "cost:application"        = var.application
      "cost:environnement"      = var.config.env_type
      "cost:component"          = var.component
      "cost:DA"                 = var.config.values.design_authority
      "EnvironnementType"       = var.config.env_type
      "component"               = var.component

      # Internal tags
      "app:environment" = var.config.env_name
  }
}