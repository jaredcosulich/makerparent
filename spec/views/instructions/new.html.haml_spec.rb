require 'spec_helper'

describe "instructions/new" do
  before(:each) do
    assign(:instruction, stub_model(Instruction,
      :text => "MyText",
      :position => 1,
      :image => ""
    ).as_new_record)
  end

  it "renders new instruction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructions_path, "post" do
      assert_select "textarea#instruction_text[name=?]", "instruction[text]"
      assert_select "input#instruction_position[name=?]", "instruction[position]"
      assert_select "input#instruction_image[name=?]", "instruction[image]"
    end
  end
end
