class UsersController < ApplicationController
  def create
    @user = User.new(allowed_user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def new
    @user = User.new
  end

  private

  def allowed_user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
