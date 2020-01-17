class WelcomesController < ApplicationController

    before_action :authorized

    def index
        @employees = Employee.all
        @clients = Client.all
        @clientappointments = Clientappointment.all
        @customerappointments = Customerappointment.all
        @employee = Employee.find(session[:employee_id])
        
    end

    def show
        @employee = Employee.find(params[:id])  
    end

end
