class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient, :cocktail, presence: true
  validates :description, presence: true
  validates_uniqueness_of :cocktail, :scope => [:ingredient]
end
