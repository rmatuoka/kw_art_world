class AddFieldsToCase < ActiveRecord::Migration
  def change
    add_column :cases, :highlight, :boolean, :null=>false, :default=>0
    add_column :cases, :order, :integer
    add_column :cases, :resume, :string
  end
end
