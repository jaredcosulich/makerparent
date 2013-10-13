require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :title => "MyString",
      :url => "MyUrl",
      :description => "MyText",
      :photo => "",
      :min_time => 1,
      :max_time => 1,
      :min_age => 1,
      :max_age => 1,
      :min_cost => 1,
      :max_cost => 1
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_title[name=?]", "project[title]"
      assert_select "input#project_url[name=?]", "project[url]"
      assert_select "textarea#project_description[name=?]", "project[description]"
      assert_select "input#project_photo[name=?]", "project[photo]"
    end
  end
end
