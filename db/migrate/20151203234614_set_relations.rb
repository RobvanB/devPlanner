class SetRelations < ActiveRecord::Migration
  def change
    rename_column :projects, :custId, :cust_id

    # Note: code below not needed. All it does it create the fields, it does not create a
    # relation in the DB

    #change_table :customers do |c|
    #  c.belongs_to :project, index:true
    #end

    #change_table :pms do |p|
    #  p.belongs_to :project, index:true
    #end

    #change_table :statuses do |s|
    #  s.belongs_to :project, index:true
    #end

    #change_table :tasks do |t|
    #  t.belongs_to :project, index:true
    #end

    #change_table :users do |u|
    #  u.belongs_to :task, index:true
    #  u.belongs_to :pm, index:true
    #end


  end
end
