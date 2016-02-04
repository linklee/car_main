require 'spec_helper'

describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :header => "Header",
      :day => "Day",
      :month => "Month",
      :link => "MyText",
      :p => "P",
      :string => "String"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Header/)
    rendered.should match(/Day/)
    rendered.should match(/Month/)
    rendered.should match(/MyText/)
    rendered.should match(/P/)
    rendered.should match(/String/)
  end
end
