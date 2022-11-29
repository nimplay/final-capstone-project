class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.where(email: params[:email]).first
    if @user&.valid_password?(params[:password])
      render json: @user, status: :ok
    else
      head(:unauthorized)
    end
  end

  def destroy
    @user = User.where(params[:id]).first
    if @user&.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end
end
