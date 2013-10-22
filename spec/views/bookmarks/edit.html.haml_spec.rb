require 'spec_helper'

describe "bookmarks/edit" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark,
      :user_id => 1,
      :project_id => 1
    ))
  end

  it "renders the edit bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookmark_path(@bookmark), "post" do
      assert_select "input#bookmark_user_id[name=?]", "bookmark[user_id]"
      assert_select "input#bookmark_project_id[name=?]", "bookmark[project_id]"
    end
  end
end
