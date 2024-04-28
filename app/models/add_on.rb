class AddOn < ApplicationRecord

    enum category: { 
        breakfast: 0, 
        lunch: 1, 
        dinner: 2, 
        snack: 3, 
        dessert: 4  
    }

    validates :name, presence: true, length: { maximum: 255 }
    validates :servings, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :category, presence: true, inclusion: { in: categories.keys }

end
