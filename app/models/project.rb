class Project < ActiveRecord::Base

  has_many :instructions
  has_many :experiences
  has_many :materials
  
  has_attached_file :photo, 
    :styles => { :rect => "300x200#", :medium => "300x300>", :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"

end
