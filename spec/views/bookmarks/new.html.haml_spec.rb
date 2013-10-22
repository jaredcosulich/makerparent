require 'spec_helper'

describe "bookmarks/new" do
  before(:each) do
    assign(:bookmark, stub_model(Bookmark,
      :user_id => 1,
      :project_id => 1
    ).as_new_record)
  end

  it "renders new bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookmarks_path, "post" do
      assert_select "input#bookmark_user_id[name=?]", "bookmark[user_id]"
      assert_select "input#bookmark_project_id[name=?]", "bookmark[project_id]"
    end
  end
end
