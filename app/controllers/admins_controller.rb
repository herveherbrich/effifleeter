class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def show
    @admin = current_admin
    @user = User.first
  end

end
