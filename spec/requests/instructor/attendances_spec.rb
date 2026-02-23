require 'rails_helper'

RSpec.describe "Instructor::Attendances", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/instructor/attendances/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/instructor/attendances/update"
      expect(response).to have_http_status(:success)
    end
  end

end
