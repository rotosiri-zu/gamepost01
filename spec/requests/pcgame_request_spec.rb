require 'rails_helper'

RSpec.describe "Pcgames", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/pcgame/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/pcgame/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/pcgame/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/pcgame/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/pcgame/update"
      expect(response).to have_http_status(:success)
    end
  end

end
