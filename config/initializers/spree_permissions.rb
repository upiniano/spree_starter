Rails.application.config.after_initialize do
  Spree::Role.find_or_create_by!(name: "store_owner")

  Spree.permissions.assign(:store_owner, [
    Spree::PermissionSets::DashboardDisplay,
    Spree::PermissionSets::OrderManagement,
    Spree::PermissionSets::ProductManagement,
    Spree::PermissionSets::UserDisplay
  ])
end
