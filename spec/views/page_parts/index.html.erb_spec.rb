require 'spec_helper'

describe "page_parts/index" do
  before(:each) do
    assign(:page_parts, [
      stub_model(PagePart,
        :page_name => "Page Name",
        :text => "MyText"
      ),
      stub_model(PagePart,
        :page_name => "Page Name",
        :text => "MyText"
      )
    ])
  end

  it "renders a list of page_parts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Page Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
