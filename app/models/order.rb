class Order < ApplicationRecord
  belongs_to :client, optional: true
  has_many :order_details, dependent: :destroy
  accepts_nested_attributes_for :order_details, allow_destroy: true,
                                reject_if: ->(attrs) { attrs['meal_id'].blank? || attrs['quantity'].blank? }
end
