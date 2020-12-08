module ApplicationHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def check_signed_in
    new_event = (link_to 'New Event', '/events/new', method: :get, class: 'nav-link')
    logout = (link_to 'Logout', '/delete', method: :delete, class: 'nav-link')
    sign_up = (link_to 'Sign Up', '/users/new', method: :get, class: 'nav-link')
    sign_in = (link_to 'Login', '/login', method: :get, class: 'nav-link')
    if logged_in?
      content_tag(:li, content_tag(
                         :a, 'Signed as: ' + current_user.username, href: '#', class: 'nav-link'
                       ),
                  class: 'nav-item') +
        content_tag(:li, new_event, class: 'nav-item active')+
        content_tag(:li, logout, class: 'nav-item')
    else
      content_tag(:li, sign_in, class: 'nav-item') +
        content_tag(:span, '  /  ', class: 'navbar-text white-text') +
        content_tag(:li, sign_up, class: 'nav-item')
    end
  end
end
