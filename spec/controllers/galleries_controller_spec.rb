require 'spec_helper'

describe GalleriesController do
  describe "GET #index" do
    it "HTTP 200" do
      get :index
      expect(response).to be_success
    end

    it "index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "all galleries" do
      gallery1, gallery2 = Gallery.create!, Gallery.create!
      get :index

      expect(assigns(:galleries)).to match_array([gallery1, gallery2])
    end
  end
end
