class Case < ActiveRecord::Base
  attr_accessible :title, :subtitle, :description, :active, :published, :main_img, :img1, :img2, :img3
  
  has_attached_file :main_img, :styles=>{
                               :big=>"1140x387#",
                               :thumb=>"80x45#"
                               }
  has_attached_file :img1, :styles=>{
                               :small=>"360x182#",
                               :thumb=>"80x45#"
                               }
  has_attached_file :img1, :styles=>{
                               :small=>"360x182#",
                               :thumb=>"80x45#"
                               }
end
