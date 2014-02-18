class Project < ActiveRecord::Base
  include ActionView::Helpers::TextHelper

  belongs_to :user
  has_many :instructions, dependent: :destroy
  has_many :materials, dependent: :destroy
  has_many :experiences, counter_cache: true, dependent: :destroy
  has_many :bookmarks, counter_cache: true, dependent: :destroy
  
  has_attached_file :photo, 
    :styles => { rect: '300x200#', square: '150x150#', medium: '300x300>', thumb: '100x100>' }, 
    :default_url => "/images/:style/missing.png"

  before_create :set_defaults
  before_save :calculate_averages
  
  LONG_ESTIMATED_SIMPLE_DESCRIPTIONS = [
    'Extremely simple, requires just a few household items',
    '', '', '',
    'May require unusual materials or be a little messy',
    '', '', '', '',
    'Very challenging and/or expensive. May require technical skills'
  ]
  
  ESTIMATED_SIMPLE_DESCRIPTIONS = [
    'Very Simple',
    'Very Simple', 
    'Simple', 
    'Simple',
    'Mildly Challenging',
    'Mildly Challenging', 
    'Challenging', 
    'Challenging', 
    'Very Challenging',
    'Very Challenging'
  ]
  
  def simple_description(long=false)
    return '' unless estimated_simple
    descriptions = long ? LONG_ESTIMATED_SIMPLE_DESCRIPTIONS : ESTIMATED_SIMPLE_DESCRIPTIONS
    descriptions[estimated_simple]
  end  
  
  def post_to_tumblr
    client = Tumblr::Client.new({
      :consumer_key => ENV['TUMBLR_CONSUMER_KEY'],
      :consumer_secret => ENV['TUMBLR_CONSUMER_SECRET'],
      :oauth_token => ENV['TUMBLR_OAUTH_TOKEN'],
      :oauth_token_secret => ENV['TUMBLR_OAUTH_SECRET']
    })
        
    # body = """
    #   <img src='#{photo.url(:medium)}' style='display: block; margin: 0 auto 12px auto;'/>
    #   <p>#{truncate(description.gsub(/\r/, '<br/>'), :length => 250)}</p>
    #   <p><a href='http://www.makerparent.com/projects/#{id}'>Visit Project ></a></p>
    # """
    # puts title
    # puts body
    # 
    # client.text("makerparent.tumblr.com", {
    #   title: title,
    #   body: body
    # })
    
    
    caption = """
      <div class='project'>
        <h3>#{title}</h3>
        <p>#{truncate(description.gsub(/\r/, '<br/>'), :length => 250)}</p>
        <p><a href='http://www.makerparent.com/projects/#{id}'>Visit Project ></a></p>
      </div>
    """
    
    client.photo("makerparent.tumblr.com", {
      source: photo.url(:medium),
      link: "http://www.makerparent.com/projects/#{id}",
      caption: caption
    })
    
    
  end
  
  private
  
    def calculate_averages
      self.average_simple = estimated_simple
      self.min_cost = estimated_cost
      self.min_age = estimated_age
    end
    
    def set_defaults
      self.experiences_count = 0
      self.bookmarks_count = 0
    end
end
