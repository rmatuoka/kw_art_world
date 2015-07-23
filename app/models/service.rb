class Service < ActiveRecord::Base
  attr_accessible :title, :active, :published, :image_service
  has_attached_file :image_service, :styles  => {:thumb => "50x50#", :services => "130x130#"} 
  
  def url_slug()
    "#{id}-#{title.parameterize}"
  end
end
