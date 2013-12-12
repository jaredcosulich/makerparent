require "spec_helper"

describe EmailSettingsController do
  describe "routing" do

    it "routes to #index" do
      get("/email_settings").should route_to("email_settings#index")
    end

    it "routes to #new" do
      get("/email_settings/new").should route_to("email_settings#new")
    end

    it "routes to #show" do
      get("/email_settings/1").should route_to("email_settings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/email_settings/1/edit").should route_to("email_settings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/email_settings").should route_to("email_settings#create")
    end

    it "routes to #update" do
      put("/email_settings/1").should route_to("email_settings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/email_settings/1").should route_to("email_settings#destroy", :id => "1")
    end

  end
end
