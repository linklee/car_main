require 'spec_helper'

describe "bas/show" do
  before(:each) do
    @ba = assign(:ba, stub_model(Ba,
      :src => "Src",
      :descr => "Descr",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Src/)
    rendered.should match(/Descr/)
    rendered.should match(/Title/)
  end
end
