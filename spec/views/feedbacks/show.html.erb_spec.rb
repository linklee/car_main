require 'spec_helper'

describe "feedbacks/show" do
  before(:each) do
    @feedback = assign(:feedback, stub_model(Feedback,
      :k => "K",
      :name => "Name",
      :location => "Location",
      :yelp_url => "Yelp Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/K/)
    rendered.should match(/Name/)
    rendered.should match(/Location/)
    rendered.should match(/Yelp Url/)
  end
end
