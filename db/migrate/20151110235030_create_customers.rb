class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :custId
      t.string :name
      t.string :pm

      t.timestamps null: false
    end
  end
end
