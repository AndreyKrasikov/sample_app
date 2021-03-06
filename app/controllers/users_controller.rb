class UsersController < ApplicationController
  before_action  :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action  :correct_user,   only: [:edit, :update]
  before_action  :admin_user,     only: :destroy

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def index
    @user = User.paginate(page: params[:page])
  end

  def create
    @user = User.new(user_params) #Not final implementation!
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile Update"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Пользователь удален."
    redirect_to users_url
  end

  def following
    @title = "Читаю"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Читатели"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    #Before filters

    #def signed_in_user
     # store_location
     # redirect_to signin_url, notice: "Пшол Нах!!!" unless signed_in?
    #end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
