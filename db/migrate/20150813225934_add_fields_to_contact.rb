class AddFieldsToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :surname, :string
    add_column :contacts, :subject, :string
  end
end
