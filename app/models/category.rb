class Category < ActiveRecord::Base
  attr_accessible :title, :description, :active, :published, :image_category, :father_id, :highlighted
  has_attached_file :image_category, :styles =>{
                                     :thumb=>"93x93>"
                                      }
  
  has_many :category_services
  has_many :services, :through=>:category_services
  
end
