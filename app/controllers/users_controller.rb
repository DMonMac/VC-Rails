class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy

  def index
    @users = User.all # This should store all users' details
    # @users = User.paginate(page: params[:page]) -> This adds pagination.
  end

  def show
    @user = User.find(params[:id]) # This is similar to User.find(<user_id which was auto generated when creating a new user>)
    @homes = @user.homes
    @feed_items = current_user.feed if logged_in?
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) # Defined below and under 'private'
    if @user.save
      log_in @user # logs new users right away after sign up
      flash[:success] = "You have successfully signed in. Welcome, #{@user.first_name}!"
      redirect_to @user # Handle successful save: Go to another page/path. Here the command equals 'redirect_to user_url(@user) = '/users/:id'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      # Action after successful edit
      flash[:sucess] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  private # Stuff under this are used internally by this controller and need not be exposed to external users via the web.
    def user_params
      params.require(:user).permit(:email,
                                   :first_name,
                                   :last_name,
                                   :password,
                                   :password_confirmation)
    end

  # Before filters:

    # Confirms the right user
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # Confirms admin user
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
