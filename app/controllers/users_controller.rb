class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    user_params = Hash.new[user: "dummy"]
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash["success"] = "Welcome to Dev Planner"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end