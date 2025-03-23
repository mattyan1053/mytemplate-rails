require 'rails_helper'

RSpec.describe "TailwindSamples::Home", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tailwind_samples/"
      expect(response).to have_http_status(:success)
    end
  end
end
