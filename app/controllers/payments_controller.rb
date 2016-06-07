class PaymentsController < ApplicationController
  def create
     user = User.find(params[:user_id])
     payment = user.payments.create(payment_params)
     respond_with user, payment
   end

   # def sendPayment
   #   user = User.find(params[:user_id])
   #   payment = user.payments.find(params[:id])
   #   #payment.increment!(:upvotes)

   #   respond_with post, comment
   # end

   private
   def payment_params
     params.require(:payment).permit(:token)
   end
end
