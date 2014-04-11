class PaymentReceipt < ActiveRecord::Base
  attr_accessible :amount, :card_type, :description, :receipt_number, :reference_number, :registration_transaction_id, :type
  validates_presence_of :registration_transaction_id
  validates_uniqueness_of :registration_transaction_id
  belongs_to :registration_transaction
end
