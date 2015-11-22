class CreatePms < ActiveRecord::Migration
  def change
    create_table :pms do |t|
      t.string :name
      t.string :email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
