class MenusController < ApplicationController
  def index
    render "index"
  end
  def create
    p params
    p "****"
    @menu = Menu.create(user_id: current_user.id, name: params[:name], food_cost_percentage: params[:percentage].to_f)
    p @menu
    redirect_to "/users/#{current_user.id}/menus"
  end

  private

  def menu_params
  end
end
