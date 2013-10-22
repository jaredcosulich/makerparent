require 'spec_helper'

describe "bookmarks/index" do
  before(:each) do
    assign(:bookmarks, [
      stub_model(Bookmark,
        :user_id => 1,
        :project_id => 2
      ),
      stub_model(Bookmark,
        :user_id => 1,
        :project_id => 2
      )
    ])
  end

  it "renders a list of bookmarks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
