require 'spec_helper'

describe "ExperiencePhotos" do
  describe "GET /experience_photos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get experience_photos_path
      response.status.should be(200)
    end
  end
end
