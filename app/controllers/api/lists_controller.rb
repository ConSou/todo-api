class Api::ListsController < ApiController
  before_action :check_auth

  def create
    list = List.new(list_params)
    list.user = current_user

    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:title, :user, :private)
  end

end
