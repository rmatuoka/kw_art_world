class AddAttachmentServiceImgToService < ActiveRecord::Migration
  def self.up
    add_column :services, :service_img_file_name, :string
    add_column :services, :service_img_content_type, :string
    add_column :services, :service_img_file_size, :integer
    add_column :services, :service_img_updated_at, :datetime
  end

  def self.down
    remove_column :services, :service_img_file_name
    remove_column :services, :service_img_content_type
    remove_column :services, :service_img_file_size
    remove_column :services, :service_img_updated_at
  end
end
