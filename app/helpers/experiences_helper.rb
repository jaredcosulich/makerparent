module ExperiencesHelper

  def upload_options
    return {
      exif: true,
      width: 960, 
      height: 720,
      quality: 80, 
      angle: :exif,
      eager: [
        {crop: :fill, width: 120, height: 108, quality: 80, angle: :exif}
      ]      
    }
  end
  
end
