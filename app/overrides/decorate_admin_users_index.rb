Deface::Override.new(
  :virtual_path => "spree/admin/users/index",
  :name => "multi_domain_admin_users_index_headers",
  :insert_before => "[data-hook='admin_users_index_header_actions']",
  :partial => "spree/admin/users/index_headers",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "spree/admin/users/index",
  :name => "multi_domain_admin_users_index_rows",
  :insert_before => "[data-hook='admin_users_index_row_actions']",
  :partial => "spree/admin/users/index_rows",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "spree/admin/users/index",
  :name => "multi_domain_admin_users_index_search",
  :insert_before => "[data-hook='admin_users_index_search_buttons']",
  :partial => "spree/admin/users/index_search_fields",
  :disabled => false)
