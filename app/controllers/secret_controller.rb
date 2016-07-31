class SecretController < ApplicationController
  def index
    before_action :authenticate_user!, only: [:secret]
  end
end


# this action will return to the same page after log in

#
# class SecretController < ApplicationController
#
#   # before_filter :store_current_location, :unless => :devise_controller?
#   before_filter :store_current_location, :unless => :devise_controller?
#
#   def index
#     before_action :authenticate_user!, only: [:secret]
#   end
#
#
#   private
#   def store_current_location
#     store_location_for(:user, request.url)
#   end
#
#   def after_sign_out_path_for(resource)
#     request.referrer || root_path
#   end
# end
