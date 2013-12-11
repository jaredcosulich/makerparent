class AccountsController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @experienced_projects = current_user.experiences.includes(:project).map(&:project)
    @bookmarked_projects = current_user.bookmarks.includes(:project).map(&:project)
      
  end
  
end
