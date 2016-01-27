require "spec_helper"

describe BasController do
  describe "routing" do

    it "routes to #index" do
      get("/bas").should route_to("bas#index")
    end

    it "routes to #new" do
      get("/bas/new").should route_to("bas#new")
    end

    it "routes to #show" do
      get("/bas/1").should route_to("bas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bas/1/edit").should route_to("bas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bas").should route_to("bas#create")
    end

    it "routes to #update" do
      put("/bas/1").should route_to("bas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bas/1").should route_to("bas#destroy", :id => "1")
    end

  end
end
