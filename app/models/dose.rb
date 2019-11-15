class Dose < ApplicationRecord
  # Associations
  belongs_to :ingredient
  belongs_to :cocktail

  # Validations
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
