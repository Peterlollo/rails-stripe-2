class UsersController < ApplicationController
  def index
    respond_with User.all
  end

  def create
    respond_with User.create(user_params)
  end

  def show
    respond_with User.find(params[:id])
  end

  def sendPayment
    user = User.find(params[:id])
    #TODO: add transactions field to user model to enable tracking of a user's total quantity of payments
    #user.increment!(:transactions)

    respond_with user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
