require 'spec_helper'

describe "experiences/show" do
  before(:each) do
    @experience = assign(:experience, stub_model(Experience,
      :summary => "Summary",
      :details => "MyText",
      :user_id => 1,
      :time => 2,
      :cost => 3,
      :min_age => 4,
      :max_age => 5,
      :recommended => false,
      :simple => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Summary/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/false/)
    rendered.should match(/6/)
  end
end
