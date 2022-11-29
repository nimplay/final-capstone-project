class Users::SessionsController < Devise::SessionsController
  respond_to :json
  def create
    user = User.where(email: params[:email]).first

    if user.valid_password?(params[:password])
      sign_in user
      render json: user.as_json(only: %i[id email name]), status: :created
    else
      render json: { errors: 'Invalid email or password' }, status: :unprocessable_entity
    end
  end

  # private

  # def respond_with(resource, _opts = {})
  #  render json: resource
  # end

  # def respond_to_on_destroy
  #   render json: { message: 'Successfully logged out.' }
  # end
end
