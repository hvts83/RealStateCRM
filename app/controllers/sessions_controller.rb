class SessionsController < ApplicationController
    def new
    end
  
    def create
      @employee = Employee.find_by(email: params[:email])
  
      if @employee && @employee.authenticate(params[:password])
        session[:employee_id] = @employee.id
        redirect_to home_path(@employee)
      else
        flash.alert = ["Incorrect username or password"]
        redirect_to login_path
      end
    end
  
    def destroy
      session[:employee_id] = nil
      redirect_back(fallback_location: new_employee_path)
    end
  end