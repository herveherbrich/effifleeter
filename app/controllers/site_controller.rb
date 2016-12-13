class SiteController < ApplicationController
  skip_before_action :authenticate_admin!
  def index
  end

  def search
    @q = params[:q]
    @user = User.where(last_name: @q).first
    if @user.nil?
      @car = Car.where(tag: @q).first
    end 
  end 

end
