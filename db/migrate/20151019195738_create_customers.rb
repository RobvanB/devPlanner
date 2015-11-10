class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :cust_id
      t.string :name

      t.timestamps null: false
    end
    add_index :customers, [:cust_id]
  end
end
