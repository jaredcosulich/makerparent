module ExperiencesHelper

  def upload_options
    return {
      exif: true,
      width: 960, 
      height: 720,
      quality: 80, 
      angle: :exif,
      eager: [
        {crop: :fill, width: 240, height: 180, quality: 80, angle: :exif}
      ]      
    }
  end
  
end
