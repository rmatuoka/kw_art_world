class CreateCases < ActiveRecord::Migration
  def self.up
    create_table :cases do |t|
      t.string :title
      t.string :subtitle
      t.string :resume
      t.text :description
      t.intger :order
      t.boolean :highlight, :null=>false, :default=>0
      t.boolean :active, :null=>false, :default=>1
      t.boolean :published, :null=>false, :default=>1
      t.timestamps
    end
  end

  def self.down
    drop_table :cases
  end
end
