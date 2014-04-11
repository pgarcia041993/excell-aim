class AddDeliverAddressStudentOrder < ActiveRecord::Migration
  def up
    add_column :student_orders, :address, :string
  end

  def down
  end
end
