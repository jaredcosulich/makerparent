class WelcomeController < ApplicationController
  def index
    # @hide_navbar = true
    
    with_photo = Project.where('photo_content_type is not null')
    @recent = with_photo.order('created_at desc').limit(3)
    @simple = with_photo.order('average_simple asc, experiences_count desc').limit(3)
    @popular = with_photo.where.not(id: (@recent + @simple).map(&:id)).order('experiences_count desc, bookmarks_count desc').limit(3)
  end
end
