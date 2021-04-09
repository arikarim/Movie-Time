module ArticlesHelper
  def feature
    @featured = Article.find_by(id: Article.feature.first)
  end

  def feature_article(feature)
    return unless feature

    content_tag(:div, class: 'col-12 p-0 position-relative feature-article ') do
      content_tag(:div, class: 'position-absolute top-50 mt-5 pt-5 l-5  imgg start-0 text-light') do
        feature.text
      end +
        (image_tag feature.image_url, class: 'imgg mg-fluid ')
    end
  end
end
