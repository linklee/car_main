require 'spec_helper'

describe "feedbacks/new" do
  before(:each) do
    assign(:feedback, stub_model(Feedback,
      :k => "MyString",
      :name => "MyString",
      :location => "MyString",
      :yelp_url => "MyString"
    ).as_new_record)
  end

  it "renders new feedback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedbacks_path, "post" do
      assert_select "input#feedback_k[name=?]", "feedback[k]"
      assert_select "input#feedback_name[name=?]", "feedback[name]"
      assert_select "input#feedback_location[name=?]", "feedback[location]"
      assert_select "input#feedback_yelp_url[name=?]", "feedback[yelp_url]"
    end
  end
end
