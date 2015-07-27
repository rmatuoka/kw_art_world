class CreateServiceImages < ActiveRecord::Migration
  def self.up
    create_table :service_images do |t|
      t.string :title
      t.integer :order,:null => false, :default => 1
      t.integer :service_id
      t.boolean :active,:null => false, :default => 1
      t.boolean :published,:null => false, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :service_images
  end
end
