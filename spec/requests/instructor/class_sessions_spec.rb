require 'rails_helper'

RSpec.describe "Instructor::ClassSessions", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/instructor/class_sessions/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/instructor/class_sessions/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/instructor/class_sessions/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/instructor/class_sessions/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/instructor/class_sessions/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/instructor/class_sessions/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/instructor/class_sessions/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
