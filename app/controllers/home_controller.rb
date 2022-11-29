class HomeController < ApplicationController
  def index
    # redirect_to home_index_path if user_signed_in?
    @user = current_user
  end
end
