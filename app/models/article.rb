class Article < ApplicationRecord
  validates :title, :text, presence: true
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :votes
  belongs_to :category

  accepts_nested_attributes_for :category
end
