class MealDetail < ApplicationRecord
  belongs_to :meal, optional: true
  belongs_to :ingredient, optional: true
end
