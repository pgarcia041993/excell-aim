class CreateStudentOrders < ActiveRecord::Migration
  def change
    create_table :student_orders do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :DOB
      t.string :email
      t.integer :transcript_quantity
      t.integer :business_card_quantity
      t.integer :diploma_quantity

      t.timestamps
    end
  end
end
