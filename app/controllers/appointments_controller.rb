class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show]

  def index
    @appointments = Appointment.all
    @cars = Car.all
    @appointment = Appointment.new
    gon.events = Appointment.all.map do |a|
      {title: a.car.tag, start: a.start_time.strftime('%Y-%m-%d'), end: a.end_time.strftime('%Y-%m-%d'), url: appointment_path(a)}
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @user = User.find(appointment_params[:user_id])
    @car = Car.find(appointment_params[:car_id])
    @appointment = @user.appointments.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path
    else 
    render "new"
    end
  end

  def show
    @car = @appointment.car
    @user = @appointment.user
  end

  def update
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path 
  end

private

  def appointment_params
    params.require(:appointment).permit(:user_id, :car_id, :start_time, :end_time)
  end

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

end
