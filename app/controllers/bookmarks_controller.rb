class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:create]
  before_filter :authenticate_user!

  # GET /bookmarks
  def index
    @bookmarks = Bookmark.all
  end

  # GET /bookmarks/1
  def show
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # GET /bookmarks/1/edit
  def edit
  end

  # POST /bookmarks
  def create
    @bookmark = @project.bookmarks.new
    @bookmark.user = current_user

    respond_to do |format|
      if @bookmark.save()
        format.html { redirect_to @project }
        format.js   { render layout: false }
        format.json { render json: @bookmark, status: :created, location: @bookmark }
      else
        format.html { redirect_to @project }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end    
  end

  # PATCH/PUT /bookmarks/1
  def update
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: 'Bookmark was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /bookmarks/1
  def destroy
    @bookmark.destroy
    redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookmark_params
      # params.require(:bookmark).permit(:project_id)
    end
end
