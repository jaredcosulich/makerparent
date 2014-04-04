class ExperiencePhoto < ActiveRecord::Base

  belongs_to :experience
  
  before_destroy :delete_hosted
  
  def delete_cloudinary
    Cloudinary::Uploader.destroy(self.cloudinary_id, invalidate: true)
  end
  

  def delete_hosted
    delete_cloudinary# if cloudify_deleted_at.nil?
    #delete_s3 unless s3_added_at.nil?
  end
  
  
end
