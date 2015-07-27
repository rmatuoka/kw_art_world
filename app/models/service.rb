class Service < ActiveRecord::Base
  attr_accessible :title, :description, :active, :published, :service_img, :category_ids, :highlight
  has_attached_file :service_img, :styles  => {:thumb => "50x50>", :services => "130x130>"} 
  
  has_many :category_services
  has_many :categories, :through=>:category_services
  
  has_many :service_images
  
  
  
  
  
  def url_slug()
    "#{id}-#{title.parameterize}"
  end
end
