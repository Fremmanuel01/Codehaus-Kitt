require 'rails_helper'

RSpec.describe "Instructor::Challenges", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/instructor/challenges/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/instructor/challenges/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/instructor/challenges/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/instructor/challenges/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/instructor/challenges/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/instructor/challenges/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/instructor/challenges/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
