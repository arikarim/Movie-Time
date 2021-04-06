class Category < ApplicationRecord
  validates :name, presence: true

  has_many :articles

  accepts_nested_attributes_for :articles
end
