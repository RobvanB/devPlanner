class AddIndexToCustomers < ActiveRecord::Migration
  def change
      remove_index :customers, [:cust_id]
      add_index :customers, [:cust_id], :unique => true
  end
end
