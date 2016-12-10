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
      redirect_to admin_users_path  
    else
      render "new" 
    end    
  end

  def show
    @user = User.find_by(params[:id])    
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy  
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :id_card, :mobile, :email, :company)
  end

end
