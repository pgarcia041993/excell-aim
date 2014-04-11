class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.decimal :price, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
