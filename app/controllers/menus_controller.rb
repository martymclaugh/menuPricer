class MenusController < ApplicationController
  def index
    render "index"
  end
  def create
    menu = Menu.new(user_id: params[:id], name: params[:name])
    if recipe.save
      redirect_to user_menus_path
    end
  end
end
