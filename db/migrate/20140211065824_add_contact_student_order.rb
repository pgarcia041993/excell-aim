class AddContactStudentOrder < ActiveRecord::Migration
  def up

    add_column :student_orders, :contact, :string
  end

  def down
  end
end
