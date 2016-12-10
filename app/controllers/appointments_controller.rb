class AppointmentsController < ApplicationController

  def index
    appointment = Appointments.all
  end

  def create
    appointment = Appointment.create
  end

  def show
  end

  def update
  end

  def destroy
  end

end
