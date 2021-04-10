module CategoriesHelper
  def latest(category)
    return unless category.articles.last

    content_tag(:div, class: 'position-absolute bottom-0 z-indexx  start-50 text-capitalize text-light fw-bolder') do
      category.articles.last.title
    end +
      content_tag(:div, class: 'imgg img-fluid img-gradientt') do
        image_tag category.articles.last.image_url, class: 'imgg img-fluid' if category.articles.last.image
      end
  end

  def category_title(category)
    return unless category.articles.last

    content_tag(:div, class: 'position-absolute top-0 z-indexx start-0') do
      (link_to category.name, category_path(category),
               class: 'fw-bolder text-uppercase text-decoration-none category-border link-light m-4 ')
    end
  end

  def all_categories(category)
    return unless category.articles.last

    content_tag(:div, class: 'col-6 col-md-3 p-0 d-inline-block img1') do
      content_tag(:div, class: 'position-relative imgg') do
        category_title(category) +
          latest(category)
      end
    end
  end
end
