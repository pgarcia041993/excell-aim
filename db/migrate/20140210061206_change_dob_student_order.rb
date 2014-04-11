class ChangeDobStudentOrder < ActiveRecord::Migration
  def change
    remove_column :student_orders, :DOB
    add_column :student_orders, :dob, :date
  end
end
