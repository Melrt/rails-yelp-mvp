class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name,    presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: CATEGORY
end
