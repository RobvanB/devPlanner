class RemovePmFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :pm, :string
  end
end
