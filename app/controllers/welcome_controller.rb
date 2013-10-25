class WelcomeController < ApplicationController
  def index
    # @hide_navbar = true
    
    @recent = Project.order('created_at desc').limit(3)
    @popular = [Project.find_by_id(1)]
    @simple = Project.where.not(id: (@recent + @popular).map(&:id)).order('average_simple asc').limit(3)
  end
end
