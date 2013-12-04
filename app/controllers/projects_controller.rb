class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # GET /projects
  def index
    limit = 10
    @page = params.include?(:page) ? params[:page] : 0
    @projects = Project.limit(limit).offset(@page * limit)
    
    if params.include?(:sort)
      if params[:sort] == 'popular'
        @projects = @projects.order('experiences_count desc')
      elsif params[:sort] == 'simple'
        @projects = @projects.order('average_simple asc')
      elsif params[:sort] == 'recent'
        @projects = @projects.order('created_at desc')
      end
    end   

    if params.include?(:age)
      age = params[:age].to_i
      @projects = @projects.order("min_age > #{age + 2}, @ (#{age} - min_age) asc, min_age > #{age}") 
    end       
    
  end

  # GET /projects/1
  def show
    @experience = Experience.new
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to project_url(@project, dialog: 'instructions'), notice: 'Project was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:title, :url, :description, :photo, :min_time, :max_time, :min_age, :max_age, :min_cost, :max_cost, :estimated_simple, :estimated_age, :estimated_cost, :estimated_time)
    end
end
