require 'spec_helper'

describe "Bas" do
  describe "GET /bas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get bas_path
      response.status.should be(200)
    end
  end
end
