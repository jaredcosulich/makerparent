class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :photo, 
    :styles => { rect: '300x200#', thumb: '100x100>' }, 
    :default_url => "/images/:style/missing.png"

  def admin?
    return [1].index(id).present?
  end

end
