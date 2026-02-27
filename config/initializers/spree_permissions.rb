# config/initializers/spree_permissions.rb

Rails.application.config.to_prepare do
  next unless defined?(Spree::PermissionSets)

  Spree.permissions.assign(:store_owner, [
    Spree::PermissionSets::DashboardDisplay,
    Spree::PermissionSets::OrderManagement,
    Spree::PermissionSets::ProductManagement,
    Spree::PermissionSets::UserDisplay
  ])
end
