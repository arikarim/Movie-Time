class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)

  validates :title, :text, :image, presence: true
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :votes
  belongs_to :category

  scope :latest, -> {where(Article = Articles.last)}
end
