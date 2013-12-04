class ExperiencePhotosController < ApplicationController
  before_action :set_experience_photo, only: [:show, :edit, :update, :destroy]

  # GET /experience_photos
  def index
    @experience_photos = ExperiencePhoto.all
  end

  # GET /experience_photos/1
  def show
  end

  # GET /experience_photos/new
  def new
    @experience_photo = ExperiencePhoto.new
  end

  # GET /experience_photos/1/edit
  def edit
  end

  # POST /experience_photos
  def create
    @experience_photo = ExperiencePhoto.new(experience_photo_params)

    if @experience_photo.save
      redirect_to @experience_photo, notice: 'Experience photo was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /experience_photos/1
  def update
    if @experience_photo.update(experience_photo_params)
      redirect_to @experience_photo, notice: 'Experience photo was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /experience_photos/1
  def destroy
    @experience_photo.destroy
    redirect_to experience_photos_url, notice: 'Experience photo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience_photo
      @experience_photo = ExperiencePhoto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def experience_photo_params
      params.require(:experience_photo).permit(:experience_id, :cloudinary_id, :href_small, :href_large, :date_taken)
    end
end
