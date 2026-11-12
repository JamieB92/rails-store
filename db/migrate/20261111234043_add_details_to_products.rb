class AddDetailsToProducts < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :price, :decimal
    add_column :products, :stock, :integer
    add_reference :products, :category, null: false, foreign_key: true
  end
end
