class UserController < ApplicationController
  def index 
    
  end

  def new 
    @post = User.new
  end

  def create 
    @post = User.new(post_params)
    @post.save 
    redirect_to users_path
  end

  private 
  def post_params
    params.require(:user).permit(:name, :email) #パラメーターのキー
  end
end
