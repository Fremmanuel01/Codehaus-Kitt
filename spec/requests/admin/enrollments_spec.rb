require 'rails_helper'

RSpec.describe "Admin::Enrollments", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/admin/enrollments/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/admin/enrollments/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/admin/enrollments/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
