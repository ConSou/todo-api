class Api::UsersController < ApiController
  # before_action :authenticated?
  # before_action :authenticate_user!
   before_action :check_auth, except: [:create]

  def index
    users = User.all

    render json: users, each_serializer: UserSerializer
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
