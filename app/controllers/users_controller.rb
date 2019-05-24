class UsersController < ApplicationController

  def new
    user = User.new

    render json: user
  end

  def create
    user = User.create(user_params)

    if !user.valid?
      user = user.errors.full_messages
    end

    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
