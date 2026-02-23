require 'rails_helper'

RSpec.describe "Instructor::Submissions", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/instructor/submissions/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/instructor/submissions/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/instructor/submissions/update"
      expect(response).to have_http_status(:success)
    end
  end

end
