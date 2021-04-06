module ApplicationHelper
  def user_sessions
    if user_signed_in?
      content_tag(:div) do
        (link_to 'sign out', destroy_user_session_path, method: :delete) +
          (link_to 'new post', new_post_path, method: :delete)
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
end
