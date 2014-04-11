class AddTotalAmountStudentOrder < ActiveRecord::Migration
  def change
    add_column :student_orders, :total_amount, :decimal, :precision => 10, :scale => 2
  end
end