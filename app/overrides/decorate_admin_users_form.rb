Deface::Override.new(
  :virtual_path => "spree/admin/users/_form",
  :name => "multi_domain_admin_user_form_meta",
  :insert_bottom => "[data-hook='admin_user_form_fields']",
  :partial => "spree/admin/users/stores",
  :disabled => false)
