class UsersController < ApplicationController

  # def user_params
  #   params.require(:user).permit(:username, :email, :password, :password_confirmation)
  # end
  #
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed Up"
    else
      render "new"
    end

  end

end
