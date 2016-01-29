require 'spec_helper'

describe "page_parts/new" do
  before(:each) do
    assign(:page_part, stub_model(PagePart,
      :page_name => "MyString",
      :text => "MyText"
    ).as_new_record)
  end

  it "renders new page_part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", page_parts_path, "post" do
      assert_select "input#page_part_page_name[name=?]", "page_part[page_name]"
      assert_select "textarea#page_part_text[name=?]", "page_part[text]"
    end
  end
end
