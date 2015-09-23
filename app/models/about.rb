class About < ActiveRecord::Base
  attr_accessible :text1, :text2, :text3, :image1, :image2, :image3, :image4, :image5, :image6
  
  has_attached_file :image1, :styles => {
                                  :admin =>["70x70#", :png] ,
                                  :front =>["260x302#", :png]
                                  }
  
  has_attached_file :image2, :styles => {
                                  :admin =>["70x70#", :png] ,
                                  :front =>["260x302#", :png]
                                  }
                                  
  has_attached_file :image3, :styles => {
                                  :admin =>["70x70#", :png] ,
                                  :front =>["260x302#", :png]
                                  }

  has_attached_file :image4, :styles => {
                                  :admin =>["70x70#", :png] ,
                                  :front =>["260x302#", :png]
                                  }
                                  
  has_attached_file :image5, :styles => {
                                  :admin =>["70x70#", :png] ,
                                  :front =>["260x302#", :png]
                                  }

  has_attached_file :image6, :styles => {
                                  :admin =>["70x70#", :png] ,
                                  :front =>["260x302#", :png]
                                  }
                                  
end
