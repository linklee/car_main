require 'spec_helper'

describe "bas/index" do
  before(:each) do
    assign(:bas, [
      stub_model(Ba,
        :src => "Src",
        :descr => "Descr",
        :title => "Title"
      ),
      stub_model(Ba,
        :src => "Src",
        :descr => "Descr",
        :title => "Title"
      )
    ])
  end

  it "renders a list of bas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Src".to_s, :count => 2
    assert_select "tr>td", :text => "Descr".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
