class Collection < ApplicationRecord
  belongs_to :user

  validates :item_name, presence: true
  validates :description, presence: true
  
end
