class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :title, limit: 255
      t.integer :cooking_time
      t.string :category
      t.string :difficulty_level    # Try to enum this if time allows

      t.timestamps
    end
  end
end
