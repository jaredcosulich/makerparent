class Project < ActiveRecord::Base

  has_many :instructions
  has_many :materials
  has_many :experiences, counter_cache: true
  has_many :bookmarks, counter_cache: true
  
  has_attached_file :photo, 
    :styles => { rect: '300x200#', square: '150x150#', medium: '300x300>', thumb: '100x100>' }, 
    :default_url => "/images/:style/missing.png"

  before_save :calculate_averages
  
  
  def simple_description
    case estimated_simple
      when 1
        'very simple, easy to do using household items'
      when 2
        'very simple, should only require household items'
      when 3
        'may require purchasing some materials'
      when 4
        'uses materials that can be easily purchased, possibly a little messy'
      when 5
        'may require unusual materials or be a little messy'
      when 6
        'may require unusual materials or be a little messy'
      when 7
        'requires some difficult to find or expensive materials or takes a while to do.'
      when 8
        'requires some difficult to find or expensive materials or takes a while to do.'
      when 9
        'requires some difficult to find or expensive materials or takes a while to do.'
      else
        'very challenging and potentially expensive. Requires technical skills.'
    end
  end  
  
  private
  
    def calculate_averages
      self.average_simple = estimated_simple
      self.min_cost = estimated_cost
      self.min_age = estimated_age
    end

end
