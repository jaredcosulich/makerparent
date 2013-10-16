require 'spec_helper'

describe "instructions/edit" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :text => "MyText",
      :position => 1,
      :image => ""
    ))
  end

  it "renders the edit instruction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instruction_path(@instruction), "post" do
      assert_select "textarea#instruction_text[name=?]", "instruction[text]"
      assert_select "input#instruction_position[name=?]", "instruction[position]"
      assert_select "input#instruction_image[name=?]", "instruction[image]"
    end
  end
end
