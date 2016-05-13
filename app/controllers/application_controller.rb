class ApplicationController < ActionController::Base

  # acts_as_token_authentication_handler_for User
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  #protect_from_forgery with: :exception
  after_filter :user_activity
  layout :layout_by_resource
  
  def after_sign_in_path_for(resource)
    resource.update_attributes :login_status => "Online"
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
  
  protected

  def layout_by_resource
    if devise_controller? && resource_name == :user
      if %w(new create).include?(action_name)
          'devise'
      else
        'application'
      end
    end
  end
  
  

private


def user_activity
  current_user.try :touch
end

end
