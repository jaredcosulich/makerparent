require 'spec_helper'

describe "email_settings/index" do
  before(:each) do
    assign(:email_settings, [
      stub_model(EmailSetting,
        :user_id => 1,
        :email => "Email",
        :weekly_newsletter => false
      ),
      stub_model(EmailSetting,
        :user_id => 1,
        :email => "Email",
        :weekly_newsletter => false
      )
    ])
  end

  it "renders a list of email_settings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
