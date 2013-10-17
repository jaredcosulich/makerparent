require 'spec_helper'

describe "experiences/index" do
  before(:each) do
    assign(:experiences, [
      stub_model(Experience,
        :summary => "Summary",
        :details => "MyText",
        :user_id => 1,
        :time => 2,
        :cost => 3,
        :min_age => 4,
        :max_age => 5,
        :recommended => false,
        :simple => 6
      ),
      stub_model(Experience,
        :summary => "Summary",
        :details => "MyText",
        :user_id => 1,
        :time => 2,
        :cost => 3,
        :min_age => 4,
        :max_age => 5,
        :recommended => false,
        :simple => 6
      )
    ])
  end

  it "renders a list of experiences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
