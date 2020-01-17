class ApplicationController < ActionController::Base
    helper_method :logged_in?
  
  def current_user
    if session[:employee_id]
      Employee.find(session[:employee_id])
    end
  end

  def logged_in?
    # current_user ? true : false
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
