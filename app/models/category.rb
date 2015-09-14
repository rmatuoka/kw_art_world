class Category < ActiveRecord::Base
  attr_accessible :title, :description, :active, :published, :image_category, :father_id, :highlighted, :subtitle
  has_attached_file :image_category, :styles =>{
                                     :thumb=>"93x93>"
                                      }
  
  has_many :category_services
  has_many :services, :through=>:category_services
  
  has_many :children, :class_name => "Category", :foreign_key => "father_id", :dependent=>:destroy
  belongs_to :father, :class_name => "Category"
  
  
  
  def self.only_father_active(ordernar ='')
    order = 'id'
    if !ordernar.blank? 
      order = ordernar
    end
    all(:conditions => ['active =  true and father_id is null'],
        :order => order)
  end
   
  def self.only_father_published(ordernar ='')
    order = 'id'
    if !ordernar.blank? 
      order = ordernar
    end
    all(:conditions => ['active =  true and published = true and father_id is null'],
        :order => order)
  end
  
  def self.only_child_active(ordernar ='')
    order = 'id'
    if !ordernar.blank? 
      order = ordernar
    end
    all(:conditions => ['active =  true and father_id is not null'],
        :order => order)
  end
   
  def self.only_child_published(ordernar ='')
    order = 'id'
    if !ordernar.blank? 
      order = ordernar
    end
    all(:conditions => ['active =  true and published = true and father_id is not null'],
        :order => order)
  end  

end
