class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # This is similar to User.find(<user_id which was auto generated when creating a new user>)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) # Defined below and under 'private'
    if @user.save
      flash[:success] = "You have successfully signed in. Welcome, #{@user.first_name}!"
      redirect_to @user # Handle successful save: Go to another page/path. Here the command equals 'redirect_to user_url(@user) = '/users/:id'
    else
      render 'new'
    end
  end

  private # Stuff under this are used internally by this controller and need not be exposed to external users via the web.
    def user_params
      params.require(:user).permit(:email,
                                   :first_name,
                                   :last_name,
                                   :password,
                                   :password_confirmation)
    end

end
