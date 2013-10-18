require 'spec_helper'

describe "materials/edit" do
  before(:each) do
    @material = assign(:material, stub_model(Material,
      :name => "MyString",
      :cost => 1,
      :purchase => "MyString",
      :project_id => 1
    ))
  end

  it "renders the edit material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", material_path(@material), "post" do
      assert_select "input#material_name[name=?]", "material[name]"
      assert_select "input#material_cost[name=?]", "material[cost]"
      assert_select "input#material_purchase[name=?]", "material[purchase]"
      assert_select "input#material_project_id[name=?]", "material[project_id]"
    end
  end
end
