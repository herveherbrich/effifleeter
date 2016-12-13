class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    @cars = Car.all
  end

  def new
    @appointment = Appointment.new

  end

  def create
    @appointment = Appointment.create(appointment_params)

  end

  def show
  end

  def update
  end

  def destroy
  end

end
