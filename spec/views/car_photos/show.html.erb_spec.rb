require 'spec_helper'

describe "car_photos/show" do
  before(:each) do
    @car_photo = assign(:car_photo, stub_model(CarPhoto,
      :p1 => "P1",
      :p2 => "P2",
      :p3 => "P3",
      :p4 => "P4",
      :p5 => "P5",
      :p6 => "P6",
      :p7 => "P7",
      :p8 => "P8"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P1/)
    rendered.should match(/P2/)
    rendered.should match(/P3/)
    rendered.should match(/P4/)
    rendered.should match(/P5/)
    rendered.should match(/P6/)
    rendered.should match(/P7/)
    rendered.should match(/P8/)
  end
end
