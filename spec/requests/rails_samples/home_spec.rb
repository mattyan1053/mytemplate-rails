require 'rails_helper'

RSpec.describe "RailsSamples::Home", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/rails_samples/"
      expect(response).to have_http_status(:success)
    end
  end
end
