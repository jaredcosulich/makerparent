class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :photo, 
    :styles => { rect: '300x200#', thumb: '100x100>' }, 
    :default_url => "/images/:style/missing.png"

  has_many :experiences
  has_many :bookmarks
  has_one :email_setting
  
  after_create :create_email_settings

  def admin?
    return [1].index(id).present?
  end
  
  private
    
    def create_email_settings
      User.email_setting.create
    end

end
