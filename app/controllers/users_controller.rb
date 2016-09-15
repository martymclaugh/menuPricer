class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    if user_signed_in?
      redirect_to "/users/#{current_user.id}/menus"
    else
      redirect_to new_user_session_path
    end
  end
end
