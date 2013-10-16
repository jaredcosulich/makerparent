require 'spec_helper'

describe "instructions/show" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :text => "MyText",
      :position => 1,
      :image => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
