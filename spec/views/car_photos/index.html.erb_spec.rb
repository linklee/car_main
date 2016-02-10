require 'spec_helper'

describe "car_photos/index" do
  before(:each) do
    assign(:car_photos, [
      stub_model(CarPhoto,
        :p1 => "P1",
        :p2 => "P2",
        :p3 => "P3",
        :p4 => "P4",
        :p5 => "P5",
        :p6 => "P6",
        :p7 => "P7",
        :p8 => "P8"
      ),
      stub_model(CarPhoto,
        :p1 => "P1",
        :p2 => "P2",
        :p3 => "P3",
        :p4 => "P4",
        :p5 => "P5",
        :p6 => "P6",
        :p7 => "P7",
        :p8 => "P8"
      )
    ])
  end

  it "renders a list of car_photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P1".to_s, :count => 2
    assert_select "tr>td", :text => "P2".to_s, :count => 2
    assert_select "tr>td", :text => "P3".to_s, :count => 2
    assert_select "tr>td", :text => "P4".to_s, :count => 2
    assert_select "tr>td", :text => "P5".to_s, :count => 2
    assert_select "tr>td", :text => "P6".to_s, :count => 2
    assert_select "tr>td", :text => "P7".to_s, :count => 2
    assert_select "tr>td", :text => "P8".to_s, :count => 2
  end
end
