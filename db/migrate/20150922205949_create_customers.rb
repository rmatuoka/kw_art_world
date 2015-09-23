class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :title
      t.boolean :active, :default => true
      t.boolean :published, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
