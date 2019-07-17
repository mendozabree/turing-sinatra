class RenameTables < ActiveRecord::Migration[5.2]
  def change
    rename_table :attribute, :attributes
    rename_table :category, :categories
    rename_table :attribute_value, :attribute_values
    rename_table :audit, :audits
    rename_table :category, :categories
    rename_table :customer, :customers
    rename_table :order_detail, :order_details
    rename_table :product, :products
    rename_table :product_attribute, :product_attributes
    rename_table :product_category, :product_categories
    rename_table :review, :reviews
    rename_table :shipping, :shipping_details
    rename_table :shipping_region, :shipping_regions
    rename_table :shopping_cart, :shopping_carts
    rename_table :tax, :taxes
  end
end
