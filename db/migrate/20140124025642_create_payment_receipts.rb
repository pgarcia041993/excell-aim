class CreatePaymentReceipts < ActiveRecord::Migration
  def change
    create_table :payment_receipts do |t|
      t.string :type
      t.string :reference_number
      t.string :receipt_number
      t.integer :registration_transaction_id
      t.decimal :amount
      t.string :card_type
      t.string :description

      t.timestamps
    end
  end
end
