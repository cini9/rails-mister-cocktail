class Cocktail < ApplicationRecord
  # Associations
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # Validations
  validates :name, uniqueness: true, presence: true

  # Scopes
  scope :search_by, ->(query) { where('name iLIKE ?', "%#{query}%") }

  # Uploaders
  mount_uploader :photo, PhotoUploader
end
