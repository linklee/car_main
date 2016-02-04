require 'spec_helper'

describe "articles/index" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :header => "Header",
        :day => "Day",
        :month => "Month",
        :link => "MyText",
        :p => "P",
        :string => "String"
      ),
      stub_model(Article,
        :header => "Header",
        :day => "Day",
        :month => "Month",
        :link => "MyText",
        :p => "P",
        :string => "String"
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Header".to_s, :count => 2
    assert_select "tr>td", :text => "Day".to_s, :count => 2
    assert_select "tr>td", :text => "Month".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "P".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
  end
end
