class Project < ActiveRecord::Base

  has_many :instructions
  has_many :experiences
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
