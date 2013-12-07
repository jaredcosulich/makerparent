module ExperiencesHelper

  def upload_options
    return {
      exif: true,
      crop: :fit,
      width: 720, 
      height: 540,
      quality: 80, 
      angle: :exif,
      eager: [
        {crop: :fill, width: 120, height: 108, quality: 80, angle: :exif}
      ]      
    }
  end
  
end
