class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { error: "Unable to create user"}, status: :unprocessable_entity
    end
  end

  def update
    user = User.find(params[:id])
    if user&.update(user_params)
      render json: { message: "User updated successfully" }, status: :ok
    else
      render json: { error: "Unable to update user"}, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    if user
      user.destroy
      render json: { message: "User deleted successfully" }, status: :ok
    else
      render json: { error: "Unable to delete user"}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
