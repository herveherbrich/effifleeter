class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end  

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to users_path  
    else
      render "new" 
    end    
  end

  def show
    @user = User.find(params[:id])    
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path 
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :id_card, :mobile, :email, :company)
  end

  def find_user
    @user = User.where(last_name: params[:last_name]).first
  end


end
