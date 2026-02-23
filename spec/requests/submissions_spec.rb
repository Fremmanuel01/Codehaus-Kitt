require 'rails_helper'

RSpec.describe "Submissions", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/submissions/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/submissions/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/submissions/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/submissions/update"
      expect(response).to have_http_status(:success)
    end
  end

end
