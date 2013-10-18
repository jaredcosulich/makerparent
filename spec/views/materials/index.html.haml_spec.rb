require 'spec_helper'

describe "materials/index" do
  before(:each) do
    assign(:materials, [
      stub_model(Material,
        :name => "Name",
        :cost => 1,
        :purchase => "Purchase",
        :project_id => 2
      ),
      stub_model(Material,
        :name => "Name",
        :cost => 1,
        :purchase => "Purchase",
        :project_id => 2
      )
    ])
  end

  it "renders a list of materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Purchase".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
