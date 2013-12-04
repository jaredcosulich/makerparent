class Experience < ActiveRecord::Base

  belongs_to :user
  belongs_to :project
  has_many :experience_photos
  
  def simple_description(long=false)
    return '' unless simple
    descriptions = long ? Project::LONG_ESTIMATED_SIMPLE_DESCRIPTIONS : Project::ESTIMATED_SIMPLE_DESCRIPTIONS
    descriptions[simple]
  end  
  

end
