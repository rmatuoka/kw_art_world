class CreateAbouts < ActiveRecord::Migration
  def self.up
    create_table :abouts do |t|
      t.text :text1
      t.text :text2
      t.text :text3
      t.timestamps
    end
  end

  def self.down
    drop_table :abouts
  end
end
