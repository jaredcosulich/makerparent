require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :title => "Title",
        :description => "MyText",
        :attachment => "",
        :min_time => 1,
        :max_time => 2,
        :min_age => 3,
        :max_age => 4,
        :min_cost => 5,
        :max_cost => 6
      ),
      stub_model(Project,
        :title => "Title",
        :description => "MyText",
        :attachment => "",
        :min_time => 1,
        :max_time => 2,
        :min_age => 3,
        :max_age => 4,
        :min_cost => 5,
        :max_cost => 6
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
