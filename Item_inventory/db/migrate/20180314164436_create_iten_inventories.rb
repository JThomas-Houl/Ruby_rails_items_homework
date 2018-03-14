class CreateItenInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :item_inventories do |t|
      t.string :serial_num
      t.string :description
      t.string :supplier
      t.string :status
      t.string :lenders

      t.timestamps
    end
  end
end
