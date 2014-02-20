class WelcomeController < ApplicationController
  def index
    # @hide_navbar = true
    
    with_photo = Project.where('photo_content_type is not null')
    @simple = with_photo.order('average_simple asc, experiences_count desc').limit(3)
    @recent = with_photo.where.not(id: @simple.map(&:id)).order('created_at desc').limit(3)
    @popular = with_photo.where.not(id: (@recent + @simple).map(&:id)).order('bookmarks_count desc, experiences_count desc').limit(3)
  end
end
