require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :header => "MyString",
      :day => "MyString",
      :month => "MyString",
      :link => "MyText",
      :p => "MyString",
      :string => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", article_path(@article), "post" do
      assert_select "input#article_header[name=?]", "article[header]"
      assert_select "input#article_day[name=?]", "article[day]"
      assert_select "input#article_month[name=?]", "article[month]"
      assert_select "textarea#article_link[name=?]", "article[link]"
      assert_select "input#article_p[name=?]", "article[p]"
      assert_select "input#article_string[name=?]", "article[string]"
    end
  end
end
