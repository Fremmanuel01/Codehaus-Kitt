require 'rails_helper'

RSpec.describe "Instructor::Lectures", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/instructor/lectures/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/instructor/lectures/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/instructor/lectures/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/instructor/lectures/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/instructor/lectures/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/instructor/lectures/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/instructor/lectures/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
