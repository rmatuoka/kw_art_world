class Case < ActiveRecord::Base
  attr_accessible :title, :subtitle, :description, :active, :published, :main_img, :img1, :img2, :img3, :highlight, :order,:resume, :material_ids
  
  has_and_belongs_to_many :materials
  
  has_attached_file :main_img, :styles=>{
                               :big=>"1140x387#",
                               :thumb=>"160x90#",
                               :to_home=>"555x311#"
                               }
  has_attached_file :img1, :styles=>{
                               :small=>"360x182#",
                               :thumb=>"160x90#"
                               }
  has_attached_file :img2, :styles=>{
                               :small=>"360x182#",
                               :thumb=>"160x90#"
                               }
  has_attached_file :img3, :styles=>{
                               :small=>"360x182#",
                               :thumb=>"160x90#"
                               }                               
end
