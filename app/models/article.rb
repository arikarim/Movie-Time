class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)

  validates :title, :text, :image, presence: true
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :votes
  belongs_to :category

  scope :feature, lambda {
    Article.joins(:votes).group(:id).count.max_by { |_k, v| v }
  }

  def finish
    @article = Article.joins('LEFT OUTER JOIN Articles ON votes.article_id =articles_id').group('articles.id').count.max_by {|v| v}
  end
end
