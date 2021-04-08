module ApplicationHelper
  def nav_category_all(categories)
    return unless categories

    categories
  end

  def user_sessions
    if user_signed_in?
      content_tag(:div, class: 'text-end') do
        (link_to 'New Category', new_category_path, class: 'text-decoration-none link-dark fs-6 mx-1') +
          (link_to 'New Movie', new_article_path, class: 'text-decoration-none link-dark fs-6 mx-3') +
          (link_to 'Sign out', destroy_user_session_path, method: :delete, class: 'link-dark text-decoration-none mx-3')
      end
    else
      content_tag(:div, class: 'd-flex justify-content-end') do
        (link_to 'Sign in', new_user_session_path, class: 'link-dark text-decoration-none mx-2') +
          (link_to '|', class:'link-dark text-decoration-none') +
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

  def vote(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      content_tag(:div) do
        (link_to 'Un vote', article_vote_path(article), method: :delete,
                                                        class: 'text-decoration-none link-dark fs-6 mx-2')
      end
    else
      content_tag(:div) do
        (link_to 'Vote', article_votes_path(article_id: article.id), method: :post,
                                                                     class: 'text-decoration-none link-dark fs-6 mx-2')
      end
    end
  end
end
