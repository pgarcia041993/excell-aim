class PaymentSelectionController < ApplicationController

  def select_payment
    @registration_transaction = RegistrationTransaction.find(params['registration_transaction_id'])
  end
end