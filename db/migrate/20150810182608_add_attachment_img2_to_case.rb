class AddAttachmentImg2ToCase < ActiveRecord::Migration
  def self.up
    add_column :cases, :img2_file_name, :string
    add_column :cases, :img2_content_type, :string
    add_column :cases, :img2_file_size, :integer
    add_column :cases, :img2_updated_at, :datetime
  end

  def self.down
    remove_column :cases, :img2_file_name
    remove_column :cases, :img2_content_type
    remove_column :cases, :img2_file_size
    remove_column :cases, :img2_updated_at
  end
end
