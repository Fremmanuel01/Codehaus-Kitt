require 'rails_helper'

RSpec.describe "Instructor::Dashboards", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/instructor/dashboards/show"
      expect(response).to have_http_status(:success)
    end
  end

end
