class HomeController < ApplicationController
  def index
    @users = User.all
    render json: @users.to_json, status: :ok
  end
end
