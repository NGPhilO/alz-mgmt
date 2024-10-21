#settings.management.tf

# Configure custom management resources settings
locals {
  configure_management_resources = {
    settings = {
      log_analytics = {
        config = {
          # Set a custom number of days to retain logs
          retention_in_days = var.platform_landing_zone.log_retention_in_days
        }
      }
      security_center = {
        config = {
          # Configure a valid security contact email address
          email_security_contact = var.platform_landing_zone.email_security_contact
        }
      }
    }
    # Set the default location
    location = var.platform_landing_zone.default_location
    # Create a custom tags input
    tags = var.platform_landing_zone.tags
  }
}
