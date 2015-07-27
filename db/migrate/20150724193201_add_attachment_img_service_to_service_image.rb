class AddAttachmentImgServiceToServiceImage < ActiveRecord::Migration
  def self.up
    add_column :service_images, :img_service_file_name, :string
    add_column :service_images, :img_service_content_type, :string
    add_column :service_images, :img_service_file_size, :integer
    add_column :service_images, :img_service_updated_at, :datetime
  end

  def self.down
    remove_column :service_images, :img_service_file_name
    remove_column :service_images, :img_service_content_type
    remove_column :service_images, :img_service_file_size
    remove_column :service_images, :img_service_updated_at
  end
end
