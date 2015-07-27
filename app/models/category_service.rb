class CategoryService < ActiveRecord::Base
  attr_accessible :category_id, :service_id
  
  
  belongs_to :service
  belongs_to :category
  
  
  
  
  
  
end
