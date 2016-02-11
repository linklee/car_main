require 'spec_helper'

describe "feedbacks/index" do
  before(:each) do
    assign(:feedbacks, [
      stub_model(Feedback,
        :k => "K",
        :name => "Name",
        :location => "Location",
        :yelp_url => "Yelp Url"
      ),
      stub_model(Feedback,
        :k => "K",
        :name => "Name",
        :location => "Location",
        :yelp_url => "Yelp Url"
      )
    ])
  end

  it "renders a list of feedbacks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "K".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Yelp Url".to_s, :count => 2
  end
end
