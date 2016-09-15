class Recipe < ApplicationRecord
  belongs_to :menu
  has_many :ingredients
end
