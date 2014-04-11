class PaymentTransactionsController < ApplicationController

  def index

  end

  def payment
    registration_transaction = RegistrationTransaction.where(email: params[:email]).last

    if registration_transaction.present?
      if registration_transaction.payment_receipt.present?
        redirect_to "/payment_confirmation/#{registration_transaction.payment_receipt.id}"
      else
        redirect_to registration_transaction_path(registration_transaction.id)
      end
    else
      redirect_to '/', {:notice => 'E-Mail Address Not Found' }
    end
  end
end