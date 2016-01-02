class ChangeColumnProjectsCustIdToCustomerId < ActiveRecord::Migration
  def change
    rename_column :projects, :cust_id, :customer_id
  end
end
