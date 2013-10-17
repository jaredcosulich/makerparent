require 'spec_helper'

describe "experiences/edit" do
  before(:each) do
    @experience = assign(:experience, stub_model(Experience,
      :summary => "MyString",
      :details => "MyText",
      :user_id => 1,
      :time => 1,
      :cost => 1,
      :min_age => 1,
      :max_age => 1,
      :recommended => false,
      :simple => 1
    ))
  end

  it "renders the edit experience form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", experience_path(@experience), "post" do
      assert_select "input#experience_summary[name=?]", "experience[summary]"
      assert_select "textarea#experience_details[name=?]", "experience[details]"
      assert_select "input#experience_user_id[name=?]", "experience[user_id]"
      assert_select "input#experience_time[name=?]", "experience[time]"
      assert_select "input#experience_cost[name=?]", "experience[cost]"
      assert_select "input#experience_min_age[name=?]", "experience[min_age]"
      assert_select "input#experience_max_age[name=?]", "experience[max_age]"
      assert_select "input#experience_recommended[name=?]", "experience[recommended]"
      assert_select "input#experience_simple[name=?]", "experience[simple]"
    end
  end
end
