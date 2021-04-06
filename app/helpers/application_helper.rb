module ApplicationHelper
  def user_sessions
    if user_signed_in?
      content_tag(:div) do
        (link_to 'sign out', destroy_user_session_path, method: :delete, class: 'link-dark text-decoration-none mx-3')
      end
    else
      content_tag(:div) do
        (link_to 'sign in', new_user_session_path, class: 'link-dark text-decoration-none mx-3')
      end +
        content_tag(:div) do
          (link_to 'sign up', new_user_registration_path, class: 'link-dark text-decoration-none mx-3')
        end
    end
  end

  def article_session
    if user_signed_in?
      content_tag(:div) do
        (link_to 'Home', root_path, class: 'text-decoration-none link-dark fs-4 mx-3') +
          (link_to 'New Article', new_article_path, class: 'text-decoration-none link-dark fs-4 mx-3') +
          (link_to 'New Category', new_category_path, class: 'text-decoration-none link-dark fs-4 mx-3')
      end
    end
  end
end
