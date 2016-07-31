class StaticPagesController < ApplicationController
  def home
  end

  def about
    # if user_signed_in?
    #   redirect_to :about
    # else
    #   redirect_to static_pages_home_path
    # end
  end

  def contact
    # if user_signed_in?
    # redirect_to :back
  end
end
