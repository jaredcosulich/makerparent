require 'spec_helper'

describe "experience_photos/show" do
  before(:each) do
    @experience_photo = assign(:experience_photo, stub_model(ExperiencePhoto,
      :experience_id => 1,
      :cloudinary_id => "Cloudinary",
      :href_small => "Href Small",
      :href_large => "Href Large"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Cloudinary/)
    rendered.should match(/Href Small/)
    rendered.should match(/Href Large/)
  end
end
