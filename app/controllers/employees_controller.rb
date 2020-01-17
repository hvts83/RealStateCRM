class EmployeesController < ApplicationController 

  def index 

  end 

  def new
    @employee = Employee.new
  end

  def create 
    @employee = Employee.new(employee_params)
    if @employee.save
      session[:employee_id] = @employee.id
      redirect_to login_path
    else 
      flash[:error] = @employee.errors.full_messages
      redirect_to new_employee_path
    end 
  end 

  private 

  def employee_params
    params.require(:employee).permit(:name, :email, :phone, :password, :password_confirmation)
  end
end 