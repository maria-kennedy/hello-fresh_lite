class AddOn < ApplicationRecord
    # belongs_to :meal
  
    validates :name, presence: true, length: { maximum: 255 }
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
  
    # def meal_category
    #   meal.category if meal.present?
    # end
end
