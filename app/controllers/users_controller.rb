class UsersController < ApplicationController
  def new
    User.new(user_params)
  end

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
