class Order < ApplicationRecord
  belongs_to :user

  has_many :items
  has_many :item_details, through: :items
end
