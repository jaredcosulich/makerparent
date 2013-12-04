require 'spec_helper'

describe "experience_photos/new" do
  before(:each) do
    assign(:experience_photo, stub_model(ExperiencePhoto,
      :experience_id => 1,
      :cloudinary_id => "MyString",
      :href_small => "MyString",
      :href_large => "MyString"
    ).as_new_record)
  end

  it "renders new experience_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", experience_photos_path, "post" do
      assert_select "input#experience_photo_experience_id[name=?]", "experience_photo[experience_id]"
      assert_select "input#experience_photo_cloudinary_id[name=?]", "experience_photo[cloudinary_id]"
      assert_select "input#experience_photo_href_small[name=?]", "experience_photo[href_small]"
      assert_select "input#experience_photo_href_large[name=?]", "experience_photo[href_large]"
    end
  end
end
