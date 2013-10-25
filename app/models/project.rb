class Project < ActiveRecord::Base

  has_many :instructions
  has_many :materials
  has_many :experiences, counter_cache: true
  has_many :bookmarks, counter_cache: true
  
  has_attached_file :photo, 
    :styles => { rect: '300x200#', square: '150x150#', medium: '300x300>', thumb: '100x100>' }, 
    :default_url => "/images/:style/missing.png"

  before_save :calculate_averages
  
  private
  
    def calculate_averages
      self.average_simple = estimated_simple
      self.min_cost = estimated_cost
      self.min_age = estimated_age
    end

end
