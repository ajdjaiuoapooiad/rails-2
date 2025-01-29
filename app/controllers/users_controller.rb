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
      redirect_to action: :index
    else
      render :new
    end
  end

  def show 
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])
    if @user.update(post_params)
      redirect_to users_path
    else
      render :edit 
    end
  end

  def destroy 
    @user = User.find(params[:id])
    @user.destroy
    redirect_to action: :index
  end



  private 
  def post_params
    params.require(:user).permit(:name, :email) 
  end

end
