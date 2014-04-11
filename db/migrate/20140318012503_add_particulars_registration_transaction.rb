class AddParticularsRegistrationTransaction < ActiveRecord::Migration
  def change
    add_column :registration_transactions, :particulars, :text
  end
end
