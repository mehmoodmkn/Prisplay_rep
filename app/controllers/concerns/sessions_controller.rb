class SessionsController < Devise::SessionsController
  
  #def destroy
  #  current_user.update_attributes :login_status => "Offline"
  #  signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
  #  set_flash_message :notice, :signed_out if signed_out && is_flashing_format?
  #  yield if block_given?
  #  respond_to_on_destroy
  #end
end
