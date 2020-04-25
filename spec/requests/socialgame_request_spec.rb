require 'rails_helper'

RSpec.describe "Socialgames", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/socialgame/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/socialgame/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/socialgame/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/socialgame/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/socialgame/update"
      expect(response).to have_http_status(:success)
    end
  end

end
