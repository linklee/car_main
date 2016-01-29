require 'spec_helper'

describe "page_parts/show" do
  before(:each) do
    @page_part = assign(:page_part, stub_model(PagePart,
      :page_name => "Page Name",
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Page Name/)
    rendered.should match(/MyText/)
  end
end
