require 'rails_helper'

RSpec.describe "Authentication", type: :request do
  let(:user) { create(:user) }

  describe "Access Control" do
    it "redirects guests from dashboard to sign in" do
      get dashboard_path
      expect(response).to redirect_to(new_user_session_path)
    end

    it "allows authenticated users to access dashboard" do
      sign_in user
      get dashboard_path
      expect(response).to have_http_status(:success)
    end
  end
end
