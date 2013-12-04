class Project < ActiveRecord::Base

  belongs_to :user
  has_many :instructions
  has_many :materials
  has_many :experiences, counter_cache: true
  has_many :bookmarks, counter_cache: true
  
  has_attached_file :photo, 
    :styles => { rect: '300x200#', square: '150x150#', medium: '300x300>', thumb: '100x100>' }, 
    :default_url => "/images/:style/missing.png"

  before_save :calculate_averages
  
  LONG_ESTIMATED_SIMPLE_DESCRIPTIONS = [
    'Extremely simple, requires just a few household items',
    '', '', '',
    'May require unusual materials or be a little messy',
    '', '', '', '',
    'Very challenging and/or expensive. May require technical skills'
  ]
  
  ESTIMATED_SIMPLE_DESCRIPTIONS = [
    'Very Simple',
    'Very Simple', 
    'Simple', 
    'Simple',
    'Mildly Challenging',
    'Mildly Challenging', 
    'Challenging', 
    'Challenging', 
    'Very Challenging',
    'Very Challenging'
  ]
  
  def simple_description(long=false)
    return '' unless estimated_simple
    descriptions = long ? LONG_ESTIMATED_SIMPLE_DESCRIPTIONS : ESTIMATED_SIMPLE_DESCRIPTIONS
    descriptions[estimated_simple]
  end  
  
  private
  
    def calculate_averages
      self.average_simple = estimated_simple
      self.min_cost = estimated_cost
      self.min_age = estimated_age
    end

end
