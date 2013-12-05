class ExperiencePhoto < ActiveRecord::Base

  belongs_to :experience
  
  before_destroy :delete_hosted
  
  def delete_cloudinary
    Cloudinary::Uploader.destroy(self.cloudinary_id, invalidate: true)
  end
  
  # def delete_s3
  #   service = S3::Service.new(:access_key_id => "AKIAJBWPH3QHEBOS6VEA",
  #                             :secret_access_key => "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")
  # 
  #   ['original', 'large', 'small'].each do |size|
  #     bucket = service.buckets.find("simpleneat-#{size}")
  #     object = bucket.objects.find("#{s3_id}.jpg")
  #     object.destroy
  #   end
  # end
  
  def delete_hosted
    delete_cloudinary# if cloudify_deleted_at.nil?
    #delete_s3 unless s3_added_at.nil?
  end
  
  
end
