class Meal < ApplicationRecord

    enum difficulty_level: { 
        easy: 0, 
        intermediate: 1, 
        advanced: 2 }

    enum category: { 
        breakfast: 0, 
        lunch: 1, 
        dinner: 2, 
        snack: 3, 
        dessert: 4 
    }

    validates :title, presence: true, length: { maximum: 255 }
    validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :difficulty_level, presence: true, inclusion: { in: difficulty_levels.keys }
    validates :category, presence: true, inclusion: { in: categories.keys }

    # sort methods

    # def t_sort
    #     Meal.order(title: :asc)
    # end
    # def ct_sort
    #     Meal.order(cooking_time: :asc)
    # end
    # def dl_sort
    #     Meal.order(difficulty_level: :asc)
    # end
    # def c_sort
    #     Meal.order(category: :asc)
    # end

end
