class CreateAddOns < ActiveRecord::Migration[7.0]
  def change
    create_table :add_ons do |t|
      t.string :name, limit: 255
      t.integer :servings
      t.decimal :price
      t.integer :category

      t.timestamps
    end
  end
end
