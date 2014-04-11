class RegistrationTransaction < ActiveRecord::Base
  attr_accessible :email, :name, :payment_date, :payment_reference_number, :payment_status, :program_id, :invoice_number, :invoice_amount, :particulars
  validates_presence_of :email
  validates_presence_of :name
  validates_presence_of :program_id
  belongs_to :program
  has_one :payment_receipt

  def self.paid_registrations
    registrations = RegistrationTransaction.all
    registrations.reject! {|x| x.payment_receipt.blank? }
    registrations.count
  end

end
