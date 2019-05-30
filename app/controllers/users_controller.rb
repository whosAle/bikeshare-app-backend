class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    # raise user.id

    render json: UsersSerializer.new(user).to_json
  end

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

  def login
    user = User.find_by(name: params[:name])

    # if !user
    #   user = {error: "User is not Found!"}
    # end

    if !user
      response = {error: "User is not Found!"}
      render json: response, status: 489
    else

      render json: UsersSerializer.new(user).to_json
    end

  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
