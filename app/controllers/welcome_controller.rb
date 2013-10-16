class WelcomeController < ApplicationController
  def index
    # @hide_navbar = true
    
    @recent = [Project.find_by_id(1)]
    @popular = [Project.find_by_id(3)]
    @simple = [Project.find_by_id(2)]
  end
end
