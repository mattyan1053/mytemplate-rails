require 'rails_helper'

RSpec.describe "HotwiredSamples::Home", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/hotwired_samples/"
      expect(response).to have_http_status(:success)
    end
  end
end
