require 'spec_helper'

describe "experience_photos/index" do
  before(:each) do
    assign(:experience_photos, [
      stub_model(ExperiencePhoto,
        :experience_id => 1,
        :cloudinary_id => "Cloudinary",
        :href_small => "Href Small",
        :href_large => "Href Large"
      ),
      stub_model(ExperiencePhoto,
        :experience_id => 1,
        :cloudinary_id => "Cloudinary",
        :href_small => "Href Small",
        :href_large => "Href Large"
      )
    ])
  end

  it "renders a list of experience_photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Cloudinary".to_s, :count => 2
    assert_select "tr>td", :text => "Href Small".to_s, :count => 2
    assert_select "tr>td", :text => "Href Large".to_s, :count => 2
  end
end
