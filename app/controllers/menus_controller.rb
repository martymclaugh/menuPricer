class MenusController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @menus = @user.menus
    render "index"
  end
  def create
    @menu = Menu.create(user_id: current_user.id, name: params[:name], food_cost_percentage: params[:percentage].to_f)
    redirect_to "/users/#{current_user.id}/menus"
  end
  def show
    @menu = Menu.find(params[:id])
    render "show"
  end

end
