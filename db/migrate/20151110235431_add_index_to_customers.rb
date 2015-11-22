class AddIndexToCustomers < ActiveRecord::Migration
  def change
      #remove_index :customers, [:custid]
      add_index :customers, [:custId], :unique => true
  end
end
