class CustomerappointmentsController < ApplicationController

    def index 
      @customerappointments = Customerappointment.all
      @clients = Client.all
      @employees = Employee.all 
      @customers = Customer.all

    end 

    def show 
      @appointments = Custemerappointment.find(params[:id])
    end

    def edit
      @customerappointment = Customerappointment.find(params[:id])
    end

    def create
        @employees = Employee.all
        @customerappointment = Customerappointment.new(customerappointment_params)
        if @customerappointment.save
          CustomerappointmentMailer.welcome_email(@customerappointment.customer).deliver_now
          redirect_to customerappointments_path
        else
          flash[:customer_error] = @customerappointment.errors.full_messages
          redirect_to new_clientappointment_path 
        end
      end 

      def edit 
        @customerappointment = Customerappointment.find(params[:id])
      end 
  
      def update 
        @customerappointment = Customerappointment.find(params[:id])
        if @customerappointment.update(customerappointment_params)
           redirect_to customerappointments_path
        else 
          flash[:error] = @customerappointment.errors.full_messages
          render :edit
        end 
      end 

private 

def customerappointment_params
    params.require(:customerappointment).permit(:description, :time, :date, :location, :customer_id, :employee_id)
end







end 