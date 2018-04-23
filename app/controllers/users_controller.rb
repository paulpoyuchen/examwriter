# app/controllers/users_controller.rb

class UsersController < ApplicationController

  def new

  end

  def create

    user = User.new(user_params)
  if user.save
    #session[:user_id] = user.id
    flash[:success] = "Sign up successful"
    redirect_to '/'
  else
    flash[:danger] = "Sign up failed"
    redirect_to users_path
  end
end

private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
end

end
