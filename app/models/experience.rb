class Experience < ActiveRecord::Base

  belongs_to :user
  belongs_to :project
  has_many :experience_photos, dependent: :destroy
  
  after_create :update_project
  after_destroy :update_project
  
  def simple_description(long=false)
    return '' unless simple
    descriptions = long ? Project::LONG_ESTIMATED_SIMPLE_DESCRIPTIONS : Project::ESTIMATED_SIMPLE_DESCRIPTIONS
    descriptions[simple]
  end  
  
  private
    
    def update_project
      project.update_attributes(experiences_count: Experience.where(project_id: self.project_id).count)
    end
  

end
