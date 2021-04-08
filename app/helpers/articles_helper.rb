module ArticlesHelper
  def feature
    @featured = Article.find_by(id: Article.feature.first)
  end

  def feature_article(feature)
    return unless feature
    content_tag(:div, class:'col-12 position-relative feature-article') do
      content_tag(:div, class:'position-absolute bottom-0 imgg start-50') do
        feature.title
      end +
      (image_tag feature.image_url, class:'imgg mg-fluid')
    end
  end
end
