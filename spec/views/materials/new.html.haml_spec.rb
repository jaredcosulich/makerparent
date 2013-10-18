require 'spec_helper'

describe "materials/new" do
  before(:each) do
    assign(:material, stub_model(Material,
      :name => "MyString",
      :cost => 1,
      :purchase => "MyString",
      :project_id => 1
    ).as_new_record)
  end

  it "renders new material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", materials_path, "post" do
      assert_select "input#material_name[name=?]", "material[name]"
      assert_select "input#material_cost[name=?]", "material[cost]"
      assert_select "input#material_purchase[name=?]", "material[purchase]"
      assert_select "input#material_project_id[name=?]", "material[project_id]"
    end
  end
end
