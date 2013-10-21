class WelcomeController < ApplicationController
  def index
    # @hide_navbar = true
    
    @recent = [Project.find_by_id(1), Project.find_by_id(1)]
    @popular = [Project.find_by_id(4), Project.find_by_id(5)]
    @simple = [Project.find_by_id(2), Project.find_by_id(3)]
  end
end
