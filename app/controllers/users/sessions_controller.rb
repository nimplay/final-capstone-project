class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token
  #  respond_to :json

  # private

  # def respond_with(resource, _opts = {})
  #   render json: resource
  # end

  # def respond_to_on_destroy
  #  render json: { message: 'Successfully logged out.' }, status: :ok
  # end

  def create
    user = User.find_by(email: login_params[:email])
    if user&.valid_password?(login_params[:password])
      @current_user = user
      render json: { user: user.attributes.except('password',
                                                  'password_confirmation'), status: 200 },
             status: 200
    else
      render json: { message: 'Error, Unauthorized', status: 401 },
             status: :unauthorized
    end
  end

  def destroy
    @current_user = nil
    render json: { message: 'Successfully logged out.', status: 200 },
           status: 200
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
