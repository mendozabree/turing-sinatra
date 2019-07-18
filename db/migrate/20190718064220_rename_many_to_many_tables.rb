class RenameManyToManyTables < ActiveRecord::Migration[5.2]
  def change
    rename_table :product_attributes, :attributes_products
    rename_table :product_categories, :categories_products
  end
end
