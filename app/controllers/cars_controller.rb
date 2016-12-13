class CarsController < ApplicationController
  
  def index
    @cars = Car.all
    @user = User.first
  end

  def new
    @car = Car.new
    @user = User.first
   end 

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to user_cars_path 
    else   
    render "new"
    end
  end

  def show
    @car = Car.find(params[:id])
    @admin = current_admin
  end

  def edit
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to user_cars_path 
  end  

  private

  def car_params
    params.require(:car).permit(:tag, :frame, :brand, :model, :finishing, :numb_places, :color, :registration_date, :discharge_date, :leaving_date, :kms)
  end

  def find_car
    @car = Car.where(tag: params[:tag]).first
  end

end


