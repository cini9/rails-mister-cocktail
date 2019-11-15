class Cocktail < ApplicationRecord
  # Associations
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # Validations
  validates :name, uniqueness: true, presence: true

  scope :search_by, ->(query) { where('name iLIKE ?', "%#{query}%") }
end
