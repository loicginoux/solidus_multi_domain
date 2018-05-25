Deface::Override.new(
  :virtual_path => "spree/admin/prices/_master_variant_table",
  :name => "multi_domain_admin_prices_index_headers",
  :replace_contents => "[data-hook='master_prices_header']",
  :partial => "spree/admin/prices/index_headers",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "spree/admin/prices/_master_variant_table",
  :name => "multi_domain_admin_prices_index_rows",
  :insert_top => "[data-hook='prices_row']",
  :partial => "spree/admin/prices/index_rows",
  :disabled => false)
