require 'rails_helper'

RSpec.describe "Videogames", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/videogames/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/videogames/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/videogames/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/videogames/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/videogames/update"
      expect(response).to have_http_status(:success)
    end
  end

end
