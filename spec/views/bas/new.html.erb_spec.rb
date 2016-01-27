require 'spec_helper'

describe "bas/new" do
  before(:each) do
    assign(:ba, stub_model(Ba,
      :src => "MyString",
      :descr => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new ba form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bas_path, "post" do
      assert_select "input#ba_src[name=?]", "ba[src]"
      assert_select "input#ba_descr[name=?]", "ba[descr]"
      assert_select "input#ba_title[name=?]", "ba[title]"
    end
  end
end
