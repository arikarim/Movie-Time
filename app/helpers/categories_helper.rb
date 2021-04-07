module CategoriesHelper
  def latest(category)
    return unless category.articles.last

    content_tag(:div, class: 'position-absolute bottom-0 start-50 text-capitalize text-light fw-bolder') do
      category.articles.last.title
    end +
      content_tag(:div, class: 'imgg img-fluid') do
        image_tag category.articles.last.image_url, class: 'imgg img-fluid' if category.articles.last.image
      end
  end

  def category_title(category)
    return unless category.articles.last

    content_tag(:div, class: 'position-absolute top-0 start-0 mx-3') do
      (link_to category.name, category_path(category),
               class: 'fw-bolder text-uppercase text-decoration-underline link-light')
    end
  end

  def all_categories(category)
    return unless category.articles.last

    content_tag(:div, class: 'col-3 d-inline-block img1') do
      content_tag(:div, class: 'position-relative imgg') do
        category_title(category) +
          latest(category)
      end
    end
  end
end
