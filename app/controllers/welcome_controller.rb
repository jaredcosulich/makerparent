class WelcomeController < ApplicationController
  def index
    # @hide_navbar = true
    
    @recent = [Project.find(1)]
    @popular = [Project.find(3)]
    @simple = [Project.find(2)]
  end
end
