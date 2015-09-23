class Customer < ActiveRecord::Base
  attr_accessible :title, :active, :published

  has_attached_file :image, :styles =>{
                                     :thumb=>"93x93>"
                                      }
end
