class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :title, limit: 255
      t.integer :cooking_time
      t.integer :category
      t.integer :difficulty_level


      t.timestamps
    end
  end
end
