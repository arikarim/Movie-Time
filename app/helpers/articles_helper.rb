module ArticlesHelper
  def feature
    @featured = Article.find_by(id: Article.feature.first)
  end
end
