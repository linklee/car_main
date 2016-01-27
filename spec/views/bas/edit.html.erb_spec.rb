require 'spec_helper'

describe "bas/edit" do
  before(:each) do
    @ba = assign(:ba, stub_model(Ba,
      :src => "MyString",
      :descr => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit ba form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ba_path(@ba), "post" do
      assert_select "input#ba_src[name=?]", "ba[src]"
      assert_select "input#ba_descr[name=?]", "ba[descr]"
      assert_select "input#ba_title[name=?]", "ba[title]"
    end
  end
end
