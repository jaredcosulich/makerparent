class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  # GET /experiences
  def index
    @experiences = Experience.all
  end

  # GET /experiences/1
  def show
  end

  # GET /experiences/new
  def new
    @experience = Experience.new
  end

  # GET /experiences/1/edit
  def edit
  end

  # POST /experiences
  def create
    @project = Project.find(params[:project_id])
    @experience = @project.experiences.new(experience_params)

    if @experience.save
      redirect_to @project, notice: 'Experience was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /experiences/1
  def update
    if @experience.update(experience_params)
      redirect_to @experience, notice: 'Experience was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /experiences/1
  def destroy
    @experience.destroy
    redirect_to experiences_url, notice: 'Experience was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def experience_params
      params.require(:experience).permit(:details, :user_id, :success, :time, :cost, :min_age, :recommended, :simple)
    end
end
