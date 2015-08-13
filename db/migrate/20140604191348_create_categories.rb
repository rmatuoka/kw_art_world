class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.boolean :active,:null => false, :default => 1 
      t.boolean :published,:null => false, :default => 1 
      t.boolean :highlighted
      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
