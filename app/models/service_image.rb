class ServiceImage < ActiveRecord::Base
  attr_accessible :title, :order, :service_id, :active, :published, :img_service

  has_attached_file :img_service, :styles=>{
                                  :default=>"1140x387#",
                                  :thumb=>"160x90#",
                                  :list=>"360x182#"
                                  }

end
