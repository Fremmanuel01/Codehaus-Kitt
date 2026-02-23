require 'rails_helper'

RSpec.describe "Dashboards", type: :request do
  let(:cohort) { create(:cohort) }
  let(:student) { create(:user, :student, cohort: cohort) }

  before do
    sign_in student
  end

  describe "GET /show" do
    it "returns http success for student" do
      get dashboard_path
      File.write("tmp/body.html", response.body) if response.status == 500
      expect(response).to have_http_status(:success)
      expect(response.body).to include("Current Module")
    end
  end
end
