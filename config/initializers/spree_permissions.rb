# config/initializers/spree_permissions.rb

Spree.permissions.assign(:store_owner, [
  Spree::PermissionSets::DashboardDisplay,
  Spree::PermissionSets::OrderManagement,
  Spree::PermissionSets::ProductManagement,
  Spree::PermissionSets::UserDisplay
])
