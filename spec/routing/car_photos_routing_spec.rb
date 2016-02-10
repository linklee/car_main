require "spec_helper"

describe CarPhotosController do
  describe "routing" do

    it "routes to #index" do
      get("/car_photos").should route_to("car_photos#index")
    end

    it "routes to #new" do
      get("/car_photos/new").should route_to("car_photos#new")
    end

    it "routes to #show" do
      get("/car_photos/1").should route_to("car_photos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/car_photos/1/edit").should route_to("car_photos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/car_photos").should route_to("car_photos#create")
    end

    it "routes to #update" do
      put("/car_photos/1").should route_to("car_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/car_photos/1").should route_to("car_photos#destroy", :id => "1")
    end

  end
end
