class EmailSettingsController < ApplicationController
  before_action :set_email_setting, only: [:show, :edit, :update, :destroy]

  # GET /email_settings
  def index
    @email_settings = EmailSetting.all
  end

  # GET /email_settings/1
  def show
  end

  # GET /email_settings/new
  def new
    @email_setting = EmailSetting.new
  end

  # GET /email_settings/1/edit
  def edit
  end

  # POST /email_settings
  def create
    @email_setting = EmailSetting.new(email_setting_params)

    respond_to do |format|
      if @email_setting.save
        format.html { redirect_to account_path }
        format.js   { render layout: false }
        format.json { render json: @email_setting, status: :created, location: @email_setting }
      else
        format.html { redirect_to account_path }
        format.json { render json: @email_setting.errors, status: :unprocessable_entity }
      end
    end    
  end

  # PATCH/PUT /email_settings/1
  def update
    if @email_setting.update(email_setting_params)
      redirect_to @email_setting, notice: 'Email setting was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /email_settings/1
  def destroy
    @email_setting.destroy
    redirect_to email_settings_url, notice: 'Email setting was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_setting
      @email_setting = EmailSetting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def email_setting_params
      params.require(:email_setting).permit(:user_id, :email, :weekly_newsletter)
    end
end
