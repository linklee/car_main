require 'spec_helper'

describe "page_parts/edit" do
  before(:each) do
    @page_part = assign(:page_part, stub_model(PagePart,
      :page_name => "MyString",
      :text => "MyText"
    ))
  end

  it "renders the edit page_part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", page_part_path(@page_part), "post" do
      assert_select "input#page_part_page_name[name=?]", "page_part[page_name]"
      assert_select "textarea#page_part_text[name=?]", "page_part[text]"
    end
  end
end
