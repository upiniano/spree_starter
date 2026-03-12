# config/initializers/spree_permissions.rb

Rails.application.config.to_prepare do
  next unless defined?(Spree::PermissionSets)

  Spree.permissions.assign(:store_owner, [
    Spree::PermissionSets::DashboardDisplay,
    Spree::PermissionSets::OrderManagement,
    Spree::PermissionSets::ProductManagement,
    Spree::PermissionSets::UserDisplay,
    Spree::PermissionSets::UserManagement,
    Spree::PermissionSets::ConfigurationManagement,
    Spree::PermissionSets::Base,
    Spree::PermissionSets::OrderDisplay,
    Spree::PermissionSets::ProductDisplay,
    Spree::PermissionSets::DefaultCustomer,
    Spree::PermissionSets::PromotionManagement,
    Spree::PermissionSets::StockDisplay,
    Spree::PermissionSets::StockManagement,
    Spree::PermissionSets::RoleManagement,
    Spree::PermissionSets::SuperUser 
  ])
end
