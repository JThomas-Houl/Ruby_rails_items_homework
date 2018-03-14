class CreateSerialNums < ActiveRecord::Migration[5.1]
  def change
    create_table :serial_nums do |t|
      t.string :description
      t.string :supplier
      t.string :status
      t.string :lenders

      t.timestamps
    end
  end
end
