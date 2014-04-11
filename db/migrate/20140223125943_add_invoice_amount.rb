class AddInvoiceAmount < ActiveRecord::Migration
  def change
    add_column :registration_transactions, :invoice_number, :string
    add_column :registration_transactions, :invoice_amount, :decimal, :precision => 10, :scale => 2
  end
end
