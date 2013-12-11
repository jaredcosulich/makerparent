class Bookmark < ActiveRecord::Base

  belongs_to :user
  belongs_to :project
  
  after_create :update_project
  after_destroy :update_project
  
  private
    
    def update_project
      project.update_attributes(bookmarks_count: Bookmark.where(project_id: self.project_id).count)
    end
  

end
