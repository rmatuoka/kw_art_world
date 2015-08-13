class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.boolean :highlight,:null => false, :default => 0
      t.boolean :active,:null => false, :default => 1
      t.boolean :published,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
