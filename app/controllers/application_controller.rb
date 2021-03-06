class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    @logged_in = logged_in?
  end

  def logged_in?
    !!session[:name]
  end
end
