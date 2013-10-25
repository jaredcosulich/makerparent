class WelcomeController < ApplicationController
  def index
    # @hide_navbar = true
    
    @recent = Project.order('created_at desc').limit(3)
    @simple = Project.order('average_simple asc, experiences_count desc').limit(3)
    @popular = Project.where.not(id: (@recent + @simple).map(&:id)).order('experiences_count desc').limit(3)
  end
end
