require 'spec_helper'

describe "car_photos/new" do
  before(:each) do
    assign(:car_photo, stub_model(CarPhoto,
      :p1 => "MyString",
      :p2 => "MyString",
      :p3 => "MyString",
      :p4 => "MyString",
      :p5 => "MyString",
      :p6 => "MyString",
      :p7 => "MyString",
      :p8 => "MyString"
    ).as_new_record)
  end

  it "renders new car_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", car_photos_path, "post" do
      assert_select "input#car_photo_p1[name=?]", "car_photo[p1]"
      assert_select "input#car_photo_p2[name=?]", "car_photo[p2]"
      assert_select "input#car_photo_p3[name=?]", "car_photo[p3]"
      assert_select "input#car_photo_p4[name=?]", "car_photo[p4]"
      assert_select "input#car_photo_p5[name=?]", "car_photo[p5]"
      assert_select "input#car_photo_p6[name=?]", "car_photo[p6]"
      assert_select "input#car_photo_p7[name=?]", "car_photo[p7]"
      assert_select "input#car_photo_p8[name=?]", "car_photo[p8]"
    end
  end
end
