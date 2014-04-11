class CreateRegistrationTransactions < ActiveRecord::Migration
  def change
    create_table :registration_transactions do |t|
      t.string :name
      t.string :email
      t.integer :program_id
      t.boolean :payment_status
      t.string :payment_reference_number
      t.datetime :payment_date

      t.timestamps
    end
  end
end
