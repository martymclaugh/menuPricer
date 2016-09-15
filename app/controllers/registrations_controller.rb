class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    p params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
