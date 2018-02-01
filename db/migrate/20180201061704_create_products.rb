class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :category_id
      t.float :price

      t.timestamps
    end
  end
end
