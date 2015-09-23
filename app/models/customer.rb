class Customer < ActiveRecord::Base
  attr_accessible :title, :active, :published, :image

  has_attached_file :image, :styles =>{
                                     :thumb=>"93x93>",
                                     :front => "198x105>",
                                     :front_pb => "198x105>"
                                      },
                                      :convert_options => { :front_pb => '-colorspace gray'}
end
