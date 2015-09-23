class AddAttachmentImage3ToAbout < ActiveRecord::Migration
  def self.up
    add_column :abouts, :image3_file_name, :string
    add_column :abouts, :image3_content_type, :string
    add_column :abouts, :image3_file_size, :integer
    add_column :abouts, :image3_updated_at, :datetime
  end

  def self.down
    remove_column :abouts, :image3_file_name
    remove_column :abouts, :image3_content_type
    remove_column :abouts, :image3_file_size
    remove_column :abouts, :image3_updated_at
  end
end
