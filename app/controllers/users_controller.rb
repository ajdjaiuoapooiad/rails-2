class UsersController < ApplicationController


  def index 
    @users = User.all
  end

  def new 
    @user = User.new
  end

  def create 
    @user = User.new(post_params)
    if @user.save 
      redirect_to users_path
    else
      render :new
    end
  end

  def detail 
    @user = User.find(params[:id])
  end


  private 
  def post_params
    params.require(:user).permit(:name, :email) #パラメーターのキー
  end

end
