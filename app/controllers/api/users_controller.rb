class Api::UsersController < ApiController
  # before_action :authenticated?
  # before_action :authenticate_user!
   before_action :check_auth

  def index
    @users = User.all

    render json: @users, each_serializer: UserSerializer
  end

end
