class RemoveCustIdFrmCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :custId, :integer
  end
end
