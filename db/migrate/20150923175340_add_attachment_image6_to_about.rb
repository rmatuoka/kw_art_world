class AddAttachmentImage6ToAbout < ActiveRecord::Migration
  def self.up
    add_column :abouts, :image6_file_name, :string
    add_column :abouts, :image6_content_type, :string
    add_column :abouts, :image6_file_size, :integer
    add_column :abouts, :image6_updated_at, :datetime
  end

  def self.down
    remove_column :abouts, :image6_file_name
    remove_column :abouts, :image6_content_type
    remove_column :abouts, :image6_file_size
    remove_column :abouts, :image6_updated_at
  end
end
