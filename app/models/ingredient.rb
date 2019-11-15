class Ingredient < ApplicationRecord
  # Associations
  has_many :doses
  has_many :cocktails, through: :doses

  # Validations
  validates :name, uniqueness: true, presence: true
end
