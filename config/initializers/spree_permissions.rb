# config/initializers/spree_permissions.rb

Rails.application.config.after_initialize do
  next if Rails.const_defined?(:Console)
  next if defined?(Rails::Server).nil?
  next if ENV["SECRET_KEY_BASE_DUMMY"]

  Spree::Role.find_or_create_by!(name: "store_owner")

  Spree.permissions.assign(:store_owner, [
    Spree::PermissionSets::DashboardDisplay,
    Spree::PermissionSets::OrderManagement,
    Spree::PermissionSets::ProductManagement,
    Spree::PermissionSets::UserDisplay
  ])
end
