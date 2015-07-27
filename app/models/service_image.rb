class ServiceImage < ActiveRecord::Base
  attr_accessible :title, :order, :service_id, :active, :published, :img_service

  has_attached_file :img_service, :styles=>{
                                  :thumb=>"50x50>"
                                  }

end
