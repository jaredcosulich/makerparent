class WelcomeController < ApplicationController
  def index
    # @hide_navbar = true
    
    @projects = Project.all.limit(3)
  end
end
