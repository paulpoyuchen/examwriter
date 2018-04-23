class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def admin_user
    if (User.where(:id=>session[:user_id]).select(:role).take.role if session[:user_id]) == "admin"
      true
    else
      false
    end
  end
  helper_method :admin_user

  def authorize
    redirect_to '/login' unless current_user
  end

  def admin?
    redirect_to '/' unless User.find(:user_id).role == "admin"
  end
end
