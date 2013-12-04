require "spec_helper"

describe ExperiencePhotosController do
  describe "routing" do

    it "routes to #index" do
      get("/experience_photos").should route_to("experience_photos#index")
    end

    it "routes to #new" do
      get("/experience_photos/new").should route_to("experience_photos#new")
    end

    it "routes to #show" do
      get("/experience_photos/1").should route_to("experience_photos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/experience_photos/1/edit").should route_to("experience_photos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/experience_photos").should route_to("experience_photos#create")
    end

    it "routes to #update" do
      put("/experience_photos/1").should route_to("experience_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/experience_photos/1").should route_to("experience_photos#destroy", :id => "1")
    end

  end
end
