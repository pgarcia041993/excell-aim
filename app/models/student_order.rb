class StudentOrder < ActiveRecord::Base
  attr_accessible :dob, :business_card_quantity, :diploma_quantity, :email, :first_name, :last_name, :middle_name, :transcript_quantity, :total_amount , :address , :contact
end
