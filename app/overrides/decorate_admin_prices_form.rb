Deface::Override.new(
  :virtual_path => "spree/admin/prices/_form",
  :name => "multi_domain_admin_price_form_meta",
  :insert_bottom => "[data-hook='admin_product_price_form']",
  :partial => "spree/admin/prices/stores",
  :disabled => false)
