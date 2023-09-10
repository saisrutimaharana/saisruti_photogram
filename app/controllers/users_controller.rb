class UsersController < Devise::RegistrationsController
  
  def show
    @user = User.find(params[:id])
  end
  private

  def sign_up_params
    params.require(:user).permit(:name, :dob, :gender, :email, :password, :password_confirmation, :avatar)
  end
end
