require "spec_helper"

describe PagePartsController do
  describe "routing" do

    it "routes to #index" do
      get("/page_parts").should route_to("page_parts#index")
    end

    it "routes to #new" do
      get("/page_parts/new").should route_to("page_parts#new")
    end

    it "routes to #show" do
      get("/page_parts/1").should route_to("page_parts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/page_parts/1/edit").should route_to("page_parts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/page_parts").should route_to("page_parts#create")
    end

    it "routes to #update" do
      put("/page_parts/1").should route_to("page_parts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/page_parts/1").should route_to("page_parts#destroy", :id => "1")
    end

  end
end
