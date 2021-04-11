module ApplicationHelper
  def alert_notice
    return unless notice

    content_tag(:div, class: 'alert alert-secondary', role: 'alert') do
      notice
    end
  end

  def cate1
    cates = Category.all
    return if cates[0].nil?

    content_tag(:div) do
      (link_to cates[0].name, category_path(cates[0]), class: 'mx-2 link-dark text-decoration-none')
    end
  end

  def cate2
    cates = Category.all
    return if cates[1].nil?

    content_tag(:div) do
      (link_to cates[1].name, category_path(cates[1]), class: 'mx-2 link-dark text-decoration-none')
    end
  end

  def cate3
    cates = Category.all
    return if cates[2].nil?

    content_tag(:div) do
      (link_to cates[2].name, category_path(cates[2]), class: 'mx-2 link-dark text-decoration-none')
    end
  end

  def cate4
    cates = Category.all
    return if cates[3].nil?

    content_tag(:div) do
      (link_to cates[3].name, category_path(cates[3]), class: 'mx-2 link-dark text-decoration-none')
    end
  end

  def cate5
    cates = Category.all
    return if cates[4].nil?

    content_tag(:div) do
      (link_to cates[4].name, category_path(cates[4]), class: 'mx-2 link-dark text-decoration-none')
    end
  end

  def cate6
    cates = Category.all
    return if cates[5].nil?

    content_tag(:div) do
      (link_to cates[5].name, category_path(cates[5]), class: 'mx-2 link-dark text-decoration-none')
    end
  end

  def nav_cates(cates)
    return if cates.nil?
    return if cates.count.zero?

    cate1 +
      cate2 +
      cate3 +
      cate4 +
      cate5 +
      cate6
  end

  def nav_category_all(categories)
    return unless categories

    categories
  end

  def user_sessions
    if user_signed_in?
      content_tag(:div, class: 'text-end d-flex flex-column flex-sm-row') do
        (link_to 'New Category', new_category_path, class: 'text-decoration-none link-dark fs-6 mx-1') +
          (link_to 'New Movie', new_article_path, class: 'text-decoration-none link-dark fs-6 mx-3') +
          (link_to 'Sign out', destroy_user_session_path, method: :delete, class: 'link-dark text-decoration-none mx-3')
      end
    else
      content_tag(:div, class: 'd-flex justify-content-end') do
        (link_to 'Sign in', new_user_session_path, class: 'link-dark text-decoration-none mx-2') +
          (link_to '|', class: 'link-dark text-decoration-none') +
          (link_to 'Register', new_user_registration_path, class: 'link-dark text-decoration-none mx-2')
      end
    end
  end

  def article_session
    return unless user_signed_in?

    content_tag(:div, class: 'd-flex') do
      (link_to 'Home', root_path, class: 'text-decoration-none link-dark fs-6 mx-3')
    end
  end
end
