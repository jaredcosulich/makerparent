class EmailSetting < ActiveRecord::Base

  belongs_to :user
  
  after_create :post_to_mailchimp
  
  def post_to_mailchimp
    mc = Mailchimp::API.new(ENV['MAILCHIMP_API_KEY'])
    
    list_id = ENV['MAILCHIMP_LIST_ID']
    email_address = (user.nil? ? email : (user.email.nil? ? email : user.email))
    begin
      mc.lists.subscribe(list_id, {'email' => email_address})
    rescue Mailchimp::ListAlreadySubscribedError
      puts "MAILCHIMP EMAIL ALREADY SUBSCRIBED: #{email}"
      return false 
    rescue Mailchimp::Error => ex
      if ex.message
        puts "MAILCHIMP ERROR: #{ex.message}"
        return false 
      else
        puts "MAILCHIMP UNKNOWN ERROR"
        return false 
      end
    end
    return true
  end

end
