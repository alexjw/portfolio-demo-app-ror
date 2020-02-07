class Meal < ApplicationRecord
  has_many :meal_details
  has_many :ingredients, through: :meal_details, dependent: :destroy
  accepts_nested_attributes_for :meal_details, allow_destroy: true,
                                reject_if: ->(attrs) { attrs['ingredient_id'].blank? || attrs['quantity'].blank? }
  has_one_attached :image
end
