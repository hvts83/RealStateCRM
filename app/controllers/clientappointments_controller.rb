class ClientappointmentsController < ApplicationController
    def index 
      @clientappointments = Clientappointment.all
      @clients = Client.all
      @employees = Employee.all 
      @customers = Customer.all

    end

    def show 
      @appointments = Clientappointment.find(params[:id])

    end 

    def new 
      @clientappointment = Clientappointment.new
      @customerappointment = Customerappointment.new
    end 

    def create
      @employees = Employee.all
      @clientappointment = Clientappointment.new(clientappointment_params)
      if @clientappointment.save
        ClientappointmentMailer.welcome_email(@clientappointment.client).deliver_now
        redirect_to clientappointments_path
      else
        flash[:client_error] = @clientappointment.errors.full_messages
        @customerappointment = Customerappointment.new 
        redirect_to new_clientappointment_path
      end
    end 

    def edit 
      @clientappointment = Clientappointment.find(params[:id])
    end 

    def update 
      @clientappointment = Clientappointment.find(params[:id])
      if @clientappointment.update(clientappointment_params)
         redirect_to clientappointments_path
      else 
        flash[:error] = @clientappointment.errors.full_messages
        render :edit
      end
    end 

    private 

    def clientappointment_params
        params.require(:clientappointment).permit(:description, :time, :date, :location, :client_id, :employee_id)
    end 

end