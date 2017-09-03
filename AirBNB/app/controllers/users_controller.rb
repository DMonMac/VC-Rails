class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id]) # This is similar to User.find(<user_id which was auto generated when creating a new user>)
    @homes = @user.homes
  end
end
