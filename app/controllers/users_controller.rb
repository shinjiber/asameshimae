class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'successfully registered!'
      redirect_to root
    else
      flash[:danger] = 'failure!'
      render root
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
